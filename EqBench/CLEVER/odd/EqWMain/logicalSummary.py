import angr
import sys
import claripy
import pickle
import logging
import time
import os
from claripy.backends.backend_z3 import claripy_solver_to_smt2



# logging.getLogger('angr').setLevel(logging.ERROR)



#For concretizing the memory addresses : not using this for now
class MyConcretizationStrategy(angr.concretization_strategies.SimConcretizationStrategy):
    def __init__(self, **kwargs): #pylint:disable=redefined-builtin
        super(MyConcretizationStrategy, self).__init__(**kwargs)

    def _concretize(self, memory, addr, **kwargs):
        mn,mx = self._range(memory, addr, **kwargs)
        print("min ",mn," max ", mx)
        return [mn, mx]


# def countSolution(solver):
#     count = 0
#     while solver.check_satisfiability()=='SAT':
#         print(solver._get_solver().model)
#         count+=1
#     print(count)


#Get the function state from the function name for the regular symbolic execution
def getFunctionState(c, functionName):
    cfg = c.analyses.CFGFast() 
    func_address = c.kb.functions.get(functionName).addr
    state=c.factory.call_state(func_address)
    return state

#Declaration of the registers as a variable name to avoid the nonces in the name format
def declareVariableRegisters(state, c):
    state.regs.rbp = claripy.BVS('rbp', c.arch.bits, explicit_name=True)
    state.regs.rsi = claripy.BVS('rsi', c.arch.bits, explicit_name=True)
    state.regs.rdx = claripy.BVS('rdx', c.arch.bits, explicit_name=True)
    state.regs.rcx = claripy.BVS('rcx', c.arch.bits, explicit_name=True)
    state.regs.rdi = claripy.BVS('rdi', c.arch.bits, explicit_name=True)
    state.regs.eax = claripy.BVS('eax', c.arch.bits, explicit_name=True)


    state.regs.xmm0lq = claripy.BVS('xmm0lq', c.arch.bits, explicit_name=True)
    state.regs.xmm1lq = claripy.BVS('xmm1lq', c.arch.bits, explicit_name=True)
    state.regs.xmm2lq = claripy.BVS('xmm2lq', c.arch.bits, explicit_name=True)
    state.regs.xmm3lq = claripy.BVS('xmm3lq', c.arch.bits, explicit_name=True)
    state.regs.xmm4lq = claripy.BVS('xmm4lq', c.arch.bits, explicit_name=True)
    state.regs.xmm5lq = claripy.BVS('xmm5lq', c.arch.bits, explicit_name=True)
    state.regs.xmm6lq = claripy.BVS('xmm6lq', c.arch.bits, explicit_name=True)
    state.regs.xmm7lq = claripy.BVS('xmm7lq', c.arch.bits, explicit_name=True)

    state.regs.xmm0hq = claripy.BVS('xmm0hq', c.arch.bits, explicit_name=True)
    state.regs.xmm0hq = claripy.BVS('xmm1hq', c.arch.bits, explicit_name=True)



#Running the regular symbolic execution on the program
def runRegularSE(binaryFile, functionName, functionAddress, entry, loopbound, returnType):
    c = angr.Project(binaryFile, auto_load_libs = False)
    if(functionAddress!=None):
        #does not work directly from the parameter
        #state = c.factory.call_state(0x401129)#for max and its essences 
        state = c.factory.call_state(functionAddress)
    elif(functionName!=None):
        state = getFunctionState(c, functionName)
    elif(entry!=None):
        state = c.factory.entry_state()

    #declaration of register variables without nonce
    declareVariableRegisters(state, c)
    
    # state.memory.read_strategies = [MyConcretizationStrategy()]
    # state.memory.write_strategies = [MyConcretizationStrategy()]

    sm = c.factory.simulation_manager(state)
    # sm.state.add_constraints(state.regs.rdi<=loopbound)
    #for loop bound
    sm.use_technique(angr.exploration_techniques.LoopSeer(bound=loopbound))
    sm.explore()

    if returnType=='double':
        x = claripy.BVS('R', 128, explicit_name=True)
        #print(len(sm.deadended))
        constraint_summary = claripy.Or(False)
        if(len(sm.deadended)>0):
            for i in range(len(sm.deadended)):
                path = sm.deadended[i]
                #print(len(path.solver.constraints))
                m_1 = path.regs.xmm0 #for double return
                #m_1 = path.regs.eax #for int return 32 bit
                constraint_and = claripy.And(True)
                for j in range(len(path.solver.constraints)):
                    constraint_and = claripy.And(path.solver.constraints[j], constraint_and)
                #print(x==m_1)
                constraint_and = claripy.And(constraint_and, x==m_1)
                #print("--------------------")
                #print(constraint_and)
                constraint_summary=claripy.Or(constraint_and, constraint_summary)
        return constraint_summary
    else: 
        x = claripy.BVS('R', 32, explicit_name=True)
        #print(len(sm.deadended))
        constraint_summary = claripy.Or(False)
        if(len(sm.deadended)>0):
            for i in range(len(sm.deadended)):
                path = sm.deadended[i]
                #print(len(path.solver.constraints))
                m_1 = path.regs.eax #for double return
                #m_1 = path.regs.eax #for int return 32 bit
                constraint_and = claripy.And(True)
                for j in range(len(path.solver.constraints)):
                    constraint_and = claripy.And(path.solver.constraints[j], constraint_and)
                #print(x==m_1)
                constraint_and = claripy.And(constraint_and, x==m_1)
                #print("--------------------")
                #print(constraint_and)
                constraint_summary=claripy.Or(constraint_and, constraint_summary)
        return constraint_summary
 
#Running the pairwise symbolic execution on the program
def runPairwiseSE(binaryFile, functionName, functionAddress, entry, loopbound, returnType):
    c = angr.Project(binaryFile, auto_load_libs = False)
    if(functionAddress!=None):
        #does not work directly from the parameter
        #state = c.factory.call_state(0x401129)#for max and its essences 
        state = c.factory.call_state(functionAddress)
    elif(functionName!=None):
        state = getFunctionState(c, functionName)
    elif(entry!=None):
        state = c.factory.entry_state()

    #declaration of register variables without nonce
    declareVariableRegisters(state, c)
    
    # state.memory.read_strategies = [MyConcretizationStrategy()]
    # state.memory.write_strategies = [MyConcretizationStrategy()]

    sm = c.factory.simulation_manager(state)
    #for loop bound
    sm.use_technique(angr.exploration_techniques.LoopSeer(bound=loopbound))
    sm.explore()

    if returnType=='double':
        x = claripy.BVS('R', 128, explicit_name=True)
        #print(len(sm.deadended))
        constraint_summary = []
        if(len(sm.deadended)>0):
            for i in range(len(sm.deadended)):
                path = sm.deadended[i]
                #print(len(path.solver.constraints))
                m_1 = path.regs.xmm0 #for double return
                #m_1 = path.regs.eax #for int return 32 bit
                constraint_and = claripy.And(True)
                for j in range(len(path.solver.constraints)):
                    constraint_and = claripy.And(path.solver.constraints[j], constraint_and)
                #print(x==m_1)
                constraint_and = claripy.And(constraint_and, x==m_1)
                #print("--------------------")
                #print(constraint_and)
                constraint_summary.append(constraint_and)
        return constraint_summary
    else: 
        x = claripy.BVS('R', 32, explicit_name=True)
        #print(len(sm.deadended))
        constraint_summary = []
        if(len(sm.deadended)>0):
            for i in range(len(sm.deadended)):
                path = sm.deadended[i]
                #print(len(path.solver.constraints))
                m_1 = path.regs.eax #for double return
                #m_1 = path.regs.eax #for int return 32 bit
                constraint_and = claripy.And(True)
                for j in range(len(path.solver.constraints)):
                    constraint_and = claripy.And(path.solver.constraints[j], constraint_and)
                #print(x==m_1)
                constraint_and = claripy.And(constraint_and, x==m_1)
                #print("--------------------")
                #print(constraint_and)
                constraint_summary.append(constraint_and)
        return constraint_summary
    
#Getting the function state from the name for the path directed symbolic execution
def getFunctionStatePD(functionName,c,call_vars):
    cfg = c.analyses.CFGFast() #this takes time to generate the CFG of the whole program!!!!
    add_options={angr.options.REPLACEMENT_SOLVER}
    for func in cfg.kb.functions:
        if functionName==str(cfg.kb.functions[func].name):
            # print("function : ",str(cfg.kb.functions[func].name))
            # print(hex(func))
            s = c.factory.call_state(
            func,
            *call_vars,
            add_options=add_options,)
            break
    return s


#Running the path directed symbolic execution on the binary : need values and number of values as extra parameter
def runPathDirected(binaryFile, functionName, number, call_vals1, functionAddress, entry, returnType ,inputBound):
    c = angr.Project(binaryFile, auto_load_libs = False)
    call_vars=[]
    call_vals = []
    for i in range(int(number)):
        call_vars.append(claripy.BVS('op'+str(i), 32, explicit_name=True))
        call_vals.append(int(call_vals1.split(",")[i]))
    add_options={angr.options.REPLACEMENT_SOLVER}
    if(functionAddress!=None):
        #does not work directly from the parameter
        #state = c.factory.call_state(0x401129)#for max and its essences 
        state = c.factory.call_state(
                functionAddress,
                *call_vars,
                add_options=add_options,)
    elif(functionName!=None):
        state = getFunctionStatePD(functionName, c, call_vars)
    elif(entry!=None):
        state = c.factory.entry_state(*call_vars,
            add_options=add_options,)
    for var, val in zip(call_vars, call_vals):
            # print("var ", var, " val ",val)
            state.preconstrainer.preconstrain(val, var)
            if inputBound=='T':
                state.add_constraints(var<=val)
    sm = c.factory.simulation_manager(state)
    sm.run()

    if returnType == 'double':
        x = claripy.BVS('R', 128, explicit_name=True)
        #print(len(sm.deadended))    
        path = sm.deadended[0]
        #print(len(path.solver.constraints))
        m_1 = path.regs.xmm0 #for double return
    elif returnType == 'int' :
        x = claripy.BVS('R', 32, explicit_name=True)
        # print(len(sm.deadended))    
        path = sm.deadended[0]
        # print(len(path.solver.constraints))
        m_1 = path.regs.eax #for int return 32 bit
        
    constraint_and = claripy.And(True)
    for j in range(len(path.solver.constraints)):
        constraint_and = claripy.And(path.solver.constraints[j], constraint_and)
    constraint_and = claripy.And(constraint_and, x==m_1)
    return constraint_and


def calculateEquivalence(constraint_1, constraint_2,functionName):
        solver = claripy.Solver()
        solver.add(claripy.Not(claripy.Or(claripy.And(constraint_1, constraint_2), claripy.And(claripy.Not(constraint_1), claripy.Not(constraint_2)))))
        print(solver.satisfiable())
        if(solver.satisfiable()==False):
            print("Equivalent :)")
        else:
            print("Not equivalent :(")
            print("==========================")
            print(solver._get_solver().model())
            print(solver.variables)  
            f = open("Result"+functionName+"NEQ.smt2",'w') 
            f.write(claripy_solver_to_smt2(solver))  
            f.close()
            solver1 = claripy.Solver()
            solver1.add(claripy.And(constraint_1,constraint_2))
            print(solver1.satisfiable()) 
            if solver1.satisfiable():
                print("==========================")
                print("Not equivalent for all the domain space")
                print("At least one equivalent solution")
                print(solver1._get_solver().model())
                f1 = open("Result"+functionName+"EQ.smt2",'w') 
                f1.write(claripy_solver_to_smt2(solver1))  
                f1.close()
                return 
            print("==========================")
            print("Non equivalent for whole domain")
            
            

def calculatePairwiseEquivalence(constraint_1_List, constraint_2_List):
    countNonEquivalence=0
    countEquivalence=0
    print("constraints from binary 1 ", len(constraint_1_List))
    print("constraints from binary 2 ", len(constraint_2_List))
    for i in range(len(constraint_1_List)):
        for j in range(len(constraint_2_List)):
            constraint_1 = constraint_1_List[i]
            constraint_2 = constraint_2_List[j]
            solver = claripy.Solver()
            solver.add(claripy.Not(claripy.Or(claripy.And(constraint_1,constraint_2), claripy.And(claripy.Not(constraint_1),claripy.Not(constraint_2)))))
            #print(solver.satisfiable())
            if(solver.satisfiable()==False):
                print("Equivalent :)")
                countEquivalence+=1
                print(constraint_1, " and ",constraint_2)
                print("==========================")
            else:
                countNonEquivalence+=1
                print("----------------------------")
                print(solver._get_solver().model())
                continue
                print("Not equivalent :(")
    print("Number of equivalent pair : ", countEquivalence)
    print("Number of non-equivalent pair : ", countNonEquivalence)

def main(binary1, binary2, functionName, loopbound, returnType, pairwise, functionAddress, entry, pathDirected, inputBound, separateRun, number=None,vals=None):
    print(binary1, " ", binary2, " ", functionName, " ", functionAddress," ", entry, " ",loopbound, " ", pathDirected, " ", inputBound)
    if pathDirected=='T':
        constraint_1=runPathDirected(binaryFile=binary1, functionName=functionName, number=number, call_vals1=vals, functionAddress=functionAddress, entry=entry, returnType=returnType, inputBound=inputBound)
        constraint_2=runPathDirected(binaryFile=binary2, functionName=functionName, number=number, call_vals1=vals, functionAddress=functionAddress, entry=entry, returnType=returnType, inputBound=inputBound)
        calculateEquivalence(constraint_1, constraint_2,functionName)
    elif pairwise=='T':
        constraint_1 = runPairwiseSE(binaryFile=binary1, functionName=functionName, functionAddress=functionAddress, entry=entry, loopbound=loopbound,  returnType=returnType)
        constraint_2 = runPairwiseSE(binaryFile=binary2, functionName=functionName, functionAddress=functionAddress, entry=entry, loopbound=loopbound, returnType=returnType)
        calculatePairwiseEquivalence(constraint_1, constraint_2,functionName)
    elif separateRun=='T':
        result = "constraints_1"
        command2 = "python logicalSummarySeparate.py " +binary1+" "+functionName+" "+str(functionAddress)+" "+str(entry)+" "+str(loopbound)+" "+returnType+" "+result
        os.system(command2)
        result = "constraints_2"
        command2 = "python logicalSummarySeparate.py " +binary2+" "+functionName+" "+str(functionAddress)+" "+str(entry)+" "+str(loopbound)+" "+returnType+" "+result
        os.system(command2)
        infile = open('constraints_1.pkl','rb')
        constraint_1 = pickle.load(infile)
        infile.close()
        infile = open('constraints_2.pkl','rb')
        constraint_2 = pickle.load(infile)
        infile.close()
        calculateEquivalence(constraint_1, constraint_2,functionName)
    else:
        constraint_1 = runRegularSE(binaryFile=binary1, functionName=functionName, functionAddress=functionAddress, entry=entry, loopbound=loopbound,  returnType=returnType)
        constraint_2 = runRegularSE(binaryFile=binary2, functionName=functionName, functionAddress=functionAddress, entry=entry, loopbound=loopbound, returnType=returnType)
        calculateEquivalence(constraint_1, constraint_2,functionName)


if __name__ == "__main__":
    
    import argparse
    parser = argparse.ArgumentParser(description='Provide two binaries, function name, function address, entry, callless, loopbound, pathdirected, domain reduction')
    parser.add_argument('--b1', metavar='binary', required=True, help='Binary file 1')
    parser.add_argument('--b2', metavar='binary', required=True, help='Binary file 2')
    parser.add_argument('--fn', metavar='FunctionName', required=True, nargs='?', const='main',help='Name of the function')
    parser.add_argument('--LB', metavar='loop bound', required=True, nargs='?', const=3,help='Set the bound of the loop', type=int)
    parser.add_argument('--r', metavar='return type', required=True,nargs='?', const='int', help='Return type of the function')

    #When nonequivalent if we want pairwise constraint solving
    parser.add_argument('--pair', metavar='pair wise constraint solving', required=False, help='Enable pairwise constraint solving')

    #if we want to run with separate running
    parser.add_argument('--separate', metavar='separate run for symbolic execution', required=False, help='Enable separate run to collect path constraints')
    
    #Options for path directed symbolic execution and the required parameters for that option
    parser.add_argument('--PD', metavar='T', required=False, help='Enable path directed symbolic execution')
    parser.add_argument('--num', metavar='Number of values for path directed SE', help='If PD true, needs to provide the number of values')
    parser.add_argument('--vals', metavar='values for path directed SE', help='If PD true, needs to provide the values; Comma separated format: 2,3,4 (for 3 parameters)')
    parser.add_argument('--ib', metavar='T', help='symbolic input is bounded by the value of input value of PDSE')
    

    #Arguments for starting the equivalence checking from the given function address or from the entry state
    parser.add_argument('--fa', metavar='FunctionAddress', required=False, help='Address of the function')
    parser.add_argument('--entry', metavar='T', required=False, help='Start from entry point')
    
    
    args = parser.parse_args()
    # print(args)
    start = time.time()
    main(binary1=args.b1,binary2=args.b2,functionName=args.fn, functionAddress=args.fa, 
    entry=args.entry, loopbound = args.LB, pathDirected=args.PD, separateRun=args.separate, returnType=args.r, 
    vals=args.vals, number=args.num, pairwise=args.pair, inputBound=args.ib)
    end_time = time.time()
    end = time.time()
    print("total time ", end-start)