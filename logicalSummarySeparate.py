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
    state.regs.rdi = claripy.BVS('rdi', c.arch.bits, explicit_name=True)
    state.regs.eax = claripy.BVS('eax', c.arch.bits, explicit_name=True)
    state.regs.r8 = claripy.BVS('r8', c.arch.bits, explicit_name=True)
    state.regs.r9 = claripy.BVS('r9', c.arch.bits, explicit_name=True)


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
    if(functionAddress!="None"):
        #does not work directly from the parameter
        #state = c.factory.call_state(0x401129)#for max and its essences 
        state = c.factory.call_state(functionAddress)
    elif(functionName!="None"):
        state = getFunctionState(c, functionName)
    elif(entry!="None"):
        state = c.factory.entry_state()

    #declaration of register variables without nonce
    declareVariableRegisters(state, c)
    
    # state.memory.read_strategies = [MyConcretizationStrategy()]
    # state.memory.write_strategies = [MyConcretizationStrategy()]

    sm = c.factory.simulation_manager(state)
    #for loop bound
    sm.use_technique(angr.exploration_techniques.LoopSeer(bound=int(loopbound)))
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


#print(str(sys.argv))
argList = sys.argv
resultName = str(argList[7])+".pkl"
list_list_1 = runRegularSE(argList[1], argList[2], argList[3], argList[4], argList[5],argList[6])
#print(list_list_1)
f = open(resultName, "wb")
pickle.dump(list_list_1, f)

