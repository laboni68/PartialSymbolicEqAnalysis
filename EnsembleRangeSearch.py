from z3 import *
import sys
import math
import random
import time

##https://www.tutorialspoint.com/cprogramming/c_data_types.htm

#Different argument from command order and description
## Arguments in the command
####1. smt2 file name of NEQ 
####2. smt2 file name of EQ
####3. bit range : 32 bit, 64 bit , 8 bit or random bit, if anything else then by default 32 bit
####4. return variable name : R or return. If anything else : then return is the default value

#Read the file names from command
##file name for the Neq constraint from the summaries
fileName = sys.argv[1]

##file name of the eq constraint summary1 ^ summary2
fileNameEQ = sys.argv[2]


totalEqListDivideNCon = [] 
totalNeqListDivideNcon = [] 
totalEqListRange = [] 
totalNeqListRange = [] 


#parsing the smt2 files
##parsing !((S1^S2)V(!S1^!S2))
f = z3.parse_smt2_file(fileName)
fEq =  z3.parse_smt2_file(fileNameEQ)


#Read the bir range from argument
bitRange = sys.argv[3]

location=sys.argv[4]
resultFile=open(location+"quantitativeResult2.txt","w")

print(fileName)
# resultFile.write(fileName+"\n")
print(fileNameEQ)
# resultFile.write(fileNameEQ+"\n")



##Find variables of the mdoel
variables = []
sVar = Solver()
sVar.add(f)
print("Satisfiability of solver : ", sVar.check(), sVar.model())
resultFile.write("Satisfiability of solver : "+str(sVar.check())+"\n")
number_of_variables = 0
for var in sVar.model():
    variables.append(var.name())
    # print(var)
    number_of_variables+=1
    # resultFile.write(str(var)+"\n")
print("Variables : ", variables)
resultFile.write("Variables : "+str(variables)+"\n")
print("Number of variables : ", number_of_variables-1)
resultFile.write("Number of variables : "+str(number_of_variables-1)+"\n")

#Integer values of different bit ranges
## for long
MAX_value_long = 9223372036854775807
MIN_value_long = -9223372036854775808

## for 64
MAX_value_64 = 9223372036854775807
MIN_value_64 = -9223372036854775808
## for 32
MAX_value_32 = 2147483647
MIN_value_32 = -2147483648
## for 16
MAX_value_16 = 32767
MIN_value_16 = -32768
## for 8
MAX_value_8 = 127
MIN_value_8 = -128
## for random (defined here; can be changed)
MAX_value_random = 3
MIN_value_random = -4
## default value of MAX and MIN is set for 32 bit integer
MAX_value = MAX_value_32
MIN_value = MIN_value_32

##unsigned long
MAX_value_unsigned_long = 18446744073709551615
MIN_value_unsigned_long = 0

##unsigned int 64 bit
MAX_value_unsigned_64 = 18446744073709551615
MIN_value_unsigned_64 = 0

## unsigned int 32 bit
MAX_value_unsigned_32 = 4294967295 
MIN_value_unsigned_32 = 0

## unsigned int 16 bit
MAX_value_unsigned_16 = 65535
MIN_value_unsigned_16 = 0

## unsigned int 8 bit
MAX_value_unsigned_8 = 255
MIN_value_unsigned_8 = 0

## for unsgined random (defined here; can be changed)
MAX_value_random = 7
MIN_value_random = 0

##unsigned char
MAX_value_unsigned_char = 255
MIN_value_unsigned_char = 0


#Setting the MIN_value and MAX_value from the bit range
if bitRange=='64':
    print("Calculate for 64 bits")
    resultFile.write("Calculate for 64 bits\n")
    MAX_value = MAX_value_64
    MIN_value = MIN_value_64
    valCheck = 63 # Required for the Range algo
elif bitRange=='16':
    print("Calculate for 16 bits")
    resultFile.write("Calculate for 16 bits\n")
    MAX_value = MAX_value_16
    MIN_value = MIN_value_16
    valCheck = 15 # Required for the Range algo
elif bitRange=='8':
    print("Calculate for 8 bits")
    resultFile.write("Calculate for 8 bits\n")
    MAX_value = MAX_value_8
    MIN_value = MIN_value_8
    valCheck = 7 # Required for the Range algo
elif bitRange=='random' or bitRange=='r' or bitRange=='R':
    print("Calculate for random number range")
    resultFile.write("Calculate for random number range\n")
    MAX_value = MAX_value_random
    MIN_value = MIN_value_random
    valCheck = 9 # Required for the Range algo
elif bitRange=='long':
    print("Calculate for long")
    resultFile.write("Calculate for long\n")
    MAX_value = MAX_value_long
    MIN_value = MIN_value_long
    valCheck = 63 # Required for the Range algo
elif bitRange=='unsigned_long':
    print("Calculate for unsigned long")
    resultFile.write("Calculate for unsigned long\n")
    MAX_value = MAX_value_unsigned_long
    MIN_value = MIN_value_unsigned_long
    valCheck = 63 # Required for the Range algo
elif bitRange=='unsigned_64':
    print("Calculate for unsigned 64")
    resultFile.write("Calculate for unsigned 64\n")
    MAX_value = MAX_value_unsigned_64
    MIN_value = MIN_value_unsigned_64
    valCheck = 63 # Required for the Range algo
elif bitRange=='unsigned_32':
    print("Calculate for unsigned 32")
    resultFile.write("Calculate for unsigned 32\n")
    MAX_value = MAX_value_unsigned_32
    MIN_value = MIN_value_unsigned_32
    valCheck = 31 # Required for the Range algo
elif bitRange=='unsigned_16':
    print("Calculate for unsigned 16")
    resultFile.write("Calculate for unsigned 16\n")
    MAX_value = MAX_value_unsigned_16
    MIN_value = MIN_value_unsigned_16
    valCheck = 15 # Required for the Range algo
elif bitRange=='unsigned_8':
    print("Calculate for unsigned 8")
    resultFile.write("Calculate for unsigned 8\n")
    MAX_value = MAX_value_unsigned_8
    MIN_value = MIN_value_unsigned_8
    valCheck = 7 # Required for the Range algo
elif bitRange=='unsigned_char':
    print("Calculate for unsigned char")
    resultFile.write("Calculate for unsigned char\n")
    MAX_value = MAX_value_unsigned_char
    MIN_value = MIN_value_unsigned_char
    valCheck = 7
elif bitRange=='unsigned_random':
    print("Calculate for unsigned random number range")
    resultFile.write("Calculate for unsigned random number range\n")
    MAX_value = MAX_value_random
    MIN_value = MIN_value_random
    valCheck = 8
else:
    ##default value of valCheck
    valCheck = 31
    #use the default value
    print("Calculate for 32 bits")
    resultFile.write("Calculate for 32 bits\n")



# #Only need to project on the input variables :not on the return values
# ##Remove the return values from the variables list
# if sys.argv[4]=='R':
#     variables.remove('R') #Most recent Binary-DSE algo return "R" variable
# else :
#     variables.remove('return') #Previous versions of Binary-DSE return "return" variable
variables.remove('R')


#function for precise calculation within range
##========TODO: Make one single function for both calculation======
##function for calculation binary range
def claculatePreciseRange(m1, mid, varName):
    # print("in function")
    # print("m1 ", m1, " mid ", mid)        
    s =Solver()
    s.add(f)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv":
                continue
        if var.name()!= varName :
                continue
        if mid-1==m1:
            print("m1 ", m1, " mid ", mid)
            s.add(var()==mid)
            # print(checkEquivalenceSingle(mid, varName))  
        else:
            s.add(var()>m1)
            s.add(var()<=mid)
    # print(s.check())
    return s.check()

##function for calculation binary range for less than 0
def claculatePreciseRangeMin(m1, mid, varName):
    # print("in function")
    s =Solver()
    s.add(f)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv":
                continue
        if var.name()!= varName :
                continue
        s.add(var()<m1)
        s.add(var()>=mid)
    return s.check()
##========TODO: Make one single function for both calculation======

def algoFindByRange():
    print("===========================ALGO : Range Search==================")
    resultFile.write("===========================ALGO : Range Search==================\n")
    solverMax = []
    solverMin = []
    maxRange = []
    minRange = []
    #the precision used for the precise range calculation
    precisionIncheck = 0.9999999999

    #the initial total domain
    totalDomain = 1

    #Generating solvers for 
    for i in range(len(variables)):
        solverMax.append(Solver())
        solverMax[i].add(f)
        solverMin.append(Solver())
        solverMin[i].add(f)
        #the calculation of the total domain for all the variables
        totalDomain=totalDomain*(MAX_value-MIN_value+1)

    #Range 1 : variable >0
    print("=======================")
    resultFile.write("=======================\n")
    print("For values greater than 0")
    resultFile.write("For values greater than 0\n")
    print("=======================")
    resultFile.write("=======================\n")
    for i in range(len(variables)):
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        if variables[i]=="fp.to_ieee_bv":
            continue
        val=0
        div=1
        solverMax[i].check()
        while(True):
            for var in solverMax[i].model():
                if var.name()=="fp.to_ieee_bv":
                    continue
                if var.name()!= variables[i] :
                    # print("var name ", var.name(), "MAX value ", MAX_value) 
                    # if bitRange.startswith('unsigned')!=True or bitRange.startswith('long')!=True or bitRange!="64":
                    # #     print(bitRange)
                    # #     solverMax[i].add(var()<=MAX_value)
                    #     continue
                    # solverMax[i].add(var()<=MAX_value)
                    continue
                solverMax[i].add(var()>0)
                div = 2**val
                if val==0:
                    solverMax[i].add(var()<=MAX_value)
                else:
                    solverMax[i].add(var()<=math.ceil(MAX_value/div))
            #     print("Max value is ", math.ceil(MAX_value/div), " valcheck ", val, "MAx ", MAX_value/div)
            # print(solverMax[i].check(), " val ", val, " div ", div, " checked until ", MAX_value/div)
            # print(solverMax[i].check())
            # print(solverMax[i])
            # # break
            # print("---------------")
            if(val==valCheck or solverMax[i].check() == unsat):
                # print(solverMax[i].check())
                break
            val=val+1
        # print("val checlk ",val, " valCheck ", valCheck)
        if val==valCheck:
            maxRange.append(0)
            print("val ", val," div ", div, "max_value 0 : 0 is not included : non-equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value 0 : 0 is not included\n")
        elif val==0:
            if math.ceil(MAX_value/div)>MAX_value:
                maxRange.append(MAX_value)
            else:
                maxRange.append(math.ceil(MAX_value/div))
            print("val ", val," div ", div, "max_value ", maxRange[i], " equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value "+str(maxRange[i])+"\n")
        else:
            # print("val ", val)
            maxRange.append(math.ceil(MAX_value/div))
            m1 = math.ceil(MAX_value/div)
            m2 = math.ceil(MAX_value/(2**(val-1)))
            mid = math.ceil(m1+(m2-m1)/2)
            # print("mid ", mid, " m1 ", m1, " m2 ", m2)
            ##============TODO : check for the precisionIncheck : taking ceiling; do we need this now?========
            while (abs(mid-m1)>=precisionIncheck and abs(m2-mid)>=precisionIncheck) :
                if claculatePreciseRange(m1, mid, variables[i]) == unsat:
                    maxRange[i]=mid
                    m1 = mid
                    mid = math.ceil(m1+(m2-m1)/2)
                    # print("mid ", mid)
                else:
                    m2 = mid
                    mid = math.ceil(m1 + (mid-m1)/2)
                    # print("mid 2 ", mid)
                    
            print("val ", val," div ", div, "max_value ", maxRange[i]," after precise calculation")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value "+str(maxRange[i])+"\n")

    # if bitRange.startswith('unsigned')!=True:
    #Range 2 : Variable <0
    print("=======================")
    resultFile.write("=======================\n")
    print("For values less than 0")
    resultFile.write("For values less than 0\n")
    print("=======================")
    resultFile.write("=======================\n")

    for i in range(len(variables)):
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        val=0
        div=1
        solverMin[i].check()
        while(True):
            for var in solverMin[i].model():
                if var.name()!= variables[i] :
                    if bitRange.startswith('long')!=True:
                        solverMax[i].add(var()>=MIN_value)
                    continue
                solverMin[i].add(var()<0) #equiality is removed for checking the odd range
                div = 2**val
                if val==0:
                    solverMin[i].add(var()>=MIN_value)
                else:
                    solverMin[i].add(var()>=MIN_value/div)
                #print("Min value ", MIN_value/div, " valcheck ", val )
            if(val==valCheck or solverMin[i].check() == unsat):
                break
            val=val+1
        print(solverMin[i].check())
        resultFile.write(str(solverMin[i].check())+"\n")
        if val==valCheck:
            minRange.append(0)
            print("val ", val," div ", div, "min_value 0 : 0 is not included : non-equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value 0 : 0 is not included\n")
        elif val==0:
            minRange.append(MIN_value/div)
            print("val ", val," div ", div, "min_value ", minRange[i]," equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value "+str(minRange[i])+"\n")
        else:
            minRange.append(math.ceil(MIN_value/div))
            m1 = math.ceil(MIN_value/div)
            m2 = math.ceil(MIN_value/(2**(val-1)))
            mid = math.ceil(m1+(m2-m1)/2)
            ##============TODO : check for the precisionIncheck : taking ceiling; do we need this now?========
            while (abs(mid-m1)>=precisionIncheck and abs(m2-mid)>=precisionIncheck) :
                if claculatePreciseRangeMin(m1, mid, variables[i]) == unsat:
                    minRange[i]=mid
                    m1 = mid
                    mid = math.ceil(m1+(m2-m1)/2)
                else:
                    m2 = mid
                    mid = math.ceil(m1 + (mid-m1)/2)

            print("val ", val," div ", div, "min_value ", minRange[i])
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value "+str(minRange[i])+"\n")

    #Range 3 : only value 0
    print("========================")
    resultFile.write("=======================\n")
    print("Check for value 0")
    resultFile.write("Check for value 0\n")
    print("========================")
    resultFile.write("=======================\n")
    zeroIncluded = []
    for i in range(len(variables)):
        solverZero = Solver()
        solverZero.add(f)
        solverZero.check()
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        for var in solverZero.model():
                if var.name()!= variables[i] :
                    if bitRange.startswith('unsigned') or bitRange.startswith('long')!=True:
                        # solverZero.add(var()>=MIN_value)
                        # solverZero.add(var()<=MAX_value)
                        continue
                solverZero.add(var()==0)
        # print("check ", checkEquivalenceSingle(0, variables[i]))
        if solverZero.check() == unsat :
            print("Equivalent for value 0")
            resultFile.write("Equivalent for value 0\n")
            zeroIncluded.append(1)
        else:
            print("Not equivalent for 0")
            resultFile.write("Not equivalent for 0\n")
            zeroIncluded.append(0)
    equivalenceDomain=1
    for i in range(len(variables)):
        # print("========================")
        # print("variable : ", variables[i])
        # print("Max ", maxRange[i], " Min ", minRange[i])
        # print("Range diff ",maxRange[i]-minRange[i]+zeroIncluded[i])
        totalEqListRange.append((maxRange[i]-minRange[i]+zeroIncluded[i]))
        totalNeqListRange.append((MAX_value-MIN_value+1)-(maxRange[i]-minRange[i]+zeroIncluded[i]))
        equivalenceDomain=equivalenceDomain*(maxRange[i]-minRange[i]+zeroIncluded[i])
        # print("Percentage of varable ", variables[i], " is ", ((maxRange[i]-minRange[i]+zeroIncluded[i])*100)/(MAX_value-MIN_value+1), "%")
        # print("========================")

    # print("Total domain : ", totalDomain)
    # print("Equivalence domain : ", equivalenceDomain)
    # if totalDomain==1 and equivalenceDomain==1:
    #     print("Minimum percentage of equivalent domain 0%")
    # else:
    #     print("Minimum percentage of equivalent domain ", (equivalenceDomain*100)/totalDomain, "%")
    # print("==============================================")
    # print("===========END RESULT of ALGO : Range Search==================")

def algoFindByRangeUnsigned():
    print("===========================ALGO : Range Search==================")
    resultFile.write("===========================ALGO : Range Search==================\n")
    solverMax = []
    solverMin = []
    maxRange = []
    minRange = []
    #the precision used for the precise range calculation
    precisionIncheck = 0.9999999999

    #the initial total domain
    totalDomain = 1

    #Generating solvers for 
    for i in range(len(variables)):
        solverMax.append(Solver())
        solverMax[i].add(f)
        solverMin.append(Solver())
        solverMin[i].add(f)
        #the calculation of the total domain for all the variables
        totalDomain=totalDomain*(MAX_value-MIN_value+1)
    Mid_value=math.floor(MAX_value/2)
    #Range 1 : variable >=mid
    print("=======================")
    resultFile.write("=======================\n")
    print("For values greater than mid ", Mid_value)
    resultFile.write("For values greater than mid "+str(Mid_value)+"\n")
    print("=======================")
    resultFile.write("=======================\n")
    for i in range(len(variables)):
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        if variables[i]=="fp.to_ieee_bv":
            continue
        val=0
        div=1
        solverMax[i].check()
        while(True):
            for var in solverMax[i].model():
                if var.name()=="fp.to_ieee_bv":
                    continue
                if var.name()!= variables[i] :
                    # print("var name ", var.name(), "MAX value ", MAX_value) 
                    if bitRange.startswith('unsigned')!=True or bitRange.startswith('long')!=True:
                        solverMax[i].add(var()<=MAX_value)
                        continue
                    # solverMax[i].add(var()<=MAX_value)
                    continue
                solverMax[i].add(var()>=Mid_value)
                div = 2**val
                if val==0:
                    solverMax[i].add(var()<=MAX_value)
                else:
                    # solverMax[i].add(var()<=math.ceil(MAX_value/div))
                    solverMax[i].add(var()<=(Mid_value+math.ceil(Mid_value/div)))
            # print("Max value is ", math.ceil(MAX_value/div), " valcheck ", val, "MAx ", MAX_value/div)
            # print(solverMax[i].check(), " val ", val, " div ", div, " checked until ", MAX_value/div)
            if(val==valCheck or solverMax[i].check() == unsat):
                # print(solverMax[i].check())
                break
            val=val+1
        # print("val checlk ",val, " valCheck ", valCheck)
        if val==valCheck:
            maxRange.append(Mid_value)
            print("val ", val," div ", div, "max_value 0 : 0 is not included : non-equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value 0 : 0 is not included\n")
        elif val==0:
            if math.ceil(MAX_value/div)>MAX_value:
                maxRange.append(MAX_value)
            else:
                maxRange.append(Mid_value+math.ceil(Mid_value/div))
            print("val ", val," div ", div, "max_value ", maxRange[i], " equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value "+str(maxRange[i])+"\n")
        else:
            # print("val ", val)
            maxRange.append(Mid_value+math.ceil(Mid_value/div))
            m1 = math.ceil(Mid_value+math.ceil(Mid_value/div))
            m2 = math.ceil(Mid_value+math.ceil(Mid_value/(2**(val-1))))
            mid = math.ceil(m1+(m2-m1)/2)
            print("mid ", mid, " m1 ", m1, " m2 ", m2)
            ##============TODO : check for the precisionIncheck : taking ceiling; do we need this now?========
            while (abs(mid-m1)>=precisionIncheck and abs(m2-mid)>=precisionIncheck) :
                if claculatePreciseRange(m1, mid, variables[i]) == unsat:
                    maxRange[i]=mid
                    print("mid ", mid)
                    m1 = mid
                    mid = math.ceil(m1+(m2-m1)/2)
                else:
                    m2 = mid
                    mid = math.ceil(m1 + (mid-m1)/2)
                    
            print("val ", val," div ", div, "max_value ", maxRange[i]," after precise calculation")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value "+str(maxRange[i])+"\n")

    #Range 2 : Variable <mid
    print("=======================")
    resultFile.write("=======================\n")
    print("For values less than mid ",Mid_value)
    resultFile.write("For values less than mid "+str(Mid_value)+"\n")
    print("=======================")
    resultFile.write("=======================\n")

    for i in range(len(variables)):
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        val=0
        div=1
        solverMin[i].check()
        while(True):
            for var in solverMin[i].model():
                if var.name()!= variables[i] :
                    if bitRange.startswith('long')!=True:
                        solverMax[i].add(var()>=MIN_value)
                    continue
                solverMin[i].add(var()<Mid_value) #equiality is removed for checking the odd range
                div = 2**val
                if val==0:
                    solverMin[i].add(var()>0)
                else:
                    solverMin[i].add(var()>Mid_value-Mid_value/div)
                #print("Min value ", MIN_value/div, " valcheck ", val )
            if(val==valCheck or solverMin[i].check() == unsat):
                break
            val=val+1
        print(solverMin[i].check())
        resultFile.write(str(solverMin[i].check())+"\n")
        if val==valCheck:
            minRange.append(Mid_value)
            print("val ", val," div ", div, "min_value 0 : 0 is not included : non-equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value 0 : 0 is not included\n")
        elif val==0:
            minRange.append(Mid_value-Mid_value/div)
            print("val ", val," div ", div, "min_value ", minRange[i]," equivalent")
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value "+str(minRange[i])+"\n")
        else:
            minRange.append(math.ceil(Mid_value-Mid_value/div))
            m1 = math.ceil(Mid_value-Mid_value/div)
            m2 = math.ceil(Mid_value-Mid_value/(2**(val-1)))
            mid = math.ceil(m1+(m2-m1)/2)
            ##============TODO : check for the precisionIncheck : taking ceiling; do we need this now?========
            while (abs(mid-m1)>=precisionIncheck and abs(m2-mid)>=precisionIncheck) :
                if claculatePreciseRangeMin(m1, mid, variables[i]) == unsat:
                    minRange[i]=mid
                    m1 = mid
                    mid = math.ceil(m1+(m2-m1)/2)
                else:
                    m2 = mid
                    mid = math.ceil(m1 + (mid-m1)/2)

            print("val ", val," div ", div, "min_value ", minRange[i])
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value "+str(minRange[i])+"\n")

    #Range 3 : only value 0
    print("========================")
    resultFile.write("=======================\n")
    print("Check for value 0")
    resultFile.write("Check for value 0\n")
    print("========================")
    resultFile.write("=======================\n")
    zeroIncluded = []
    for i in range(len(variables)):
        solverZero = Solver()
        solverZero.add(f)
        solverZero.check()
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        for var in solverZero.model():
                if var.name()!= variables[i] :
                    if bitRange.startswith('unsigned') or bitRange.startswith('long')!=True:
                        # solverZero.add(var()>=MIN_value)
                        # solverZero.add(var()<=MAX_value)
                        continue
                solverZero.add(var()==0)
        # print("check ", checkEquivalenceSingle(0, variables[i]))
        if solverZero.check() == unsat :
            print("Equivalent for value 0")
            resultFile.write("Equivalent for value 0\n")
            zeroIncluded.append(1)
        else:
            print("Not equivalent for 0")
            resultFile.write("Not equivalent for 0\n")
            zeroIncluded.append(0)
    equivalenceDomain=1
    for i in range(len(variables)):
        # print("========================")
        print("variable : ", variables[i])
        print("Max ", maxRange[i], " Min ", minRange[i])
        # print("Range diff ",maxRange[i]-minRange[i]+zeroIncluded[i])
        totalEqListRange.append((maxRange[i]-minRange[i]+zeroIncluded[i]))
        totalNeqListRange.append((MAX_value-MIN_value+1)-(maxRange[i]-minRange[i]+zeroIncluded[i]))
        equivalenceDomain=equivalenceDomain*(maxRange[i]-minRange[i]+zeroIncluded[i])
        # print("Percentage of varable ", variables[i], " is ", ((maxRange[i]-minRange[i]+zeroIncluded[i])*100)/(MAX_value-MIN_value+1), "%")
        # print("========================")

    # print("Total domain : ", totalDomain)
    # print("Equivalence domain : ", equivalenceDomain)
    # if totalDomain==1 and equivalenceDomain==1:
    #     print("Minimum percentage of equivalent domain 0%")
    # else:
    #     print("Minimum percentage of equivalent domain ", (equivalenceDomain*100)/totalDomain, "%")
    # print("==============================================")
    # print("===========END RESULT of ALGO : Range Search==================")



#Divide and Conquer Algorithm : To search the whole domain
#check equivalence function for Divide and Conquer Algorithm
def checkEquivalence(small, large, varName):
    s =Solver()
    s.add(f)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv":
                continue
        if var.name()!= varName :
                # s.add(var()>=MIN_value)
                # s.add(var()<=MAX_value)
                continue
        s.add(var()>=small)
        s.add(var()<large) 
    # print(s)
    return s.check()

def checkEquivalenceSingle(small, varName):
    s =Solver()
    s.add(f)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv":
                continue
        if var.name()!= varName :
                # s.add(var()>=MIN_value)
                # s.add(var()<=MAX_value)
                continue
        s.add(var()==small)
        # s.add(var()<large) 
    # print(s)
    return s.check()

def checkTotalNonEq(small, large, varName):
    #   randomThreshold = random.randint(0,threshold)
    #   print("------------------------------------")
    #   print("The threshold is ", randomThreshold)
    s = Solver()
    s.add(fEq)
    s.check()
    #print("In nonequivalence ", s.check())
    for var in s.model():
        if var.name()=="fp.to_ieee_bv":
            continue
        if var.name()!= varName :
            #   s.add(var()>=MIN_value)
            #   s.add(var()<=MAX_value)
            continue
        s.add(var()>=small)
        s.add(var()<large) #need to check for the corner case
    return s.check()

#function for Divide and check for equivalence
def divideNCheck(smallest, largest, varName, maxDepth, equivalenctList, nonEqList,threshold):
    #the threshold to limit the depth of the recursion call
    # threshold = 4
    thresholdDiff = 1
    # print("maxDepth ", maxDepth)
    if largest<=smallest:
         return
    if maxDepth == threshold  or largest-smallest <=thresholdDiff:
          list = [smallest, largest-1]
          nonEqList.append(list)
          return
    mid = math.floor(smallest + (largest-smallest)/2)
    #print("small ",smallest," mid ", mid, " large ", largest, " diff ", largest-smallest)
    resultFirstHalf = checkEquivalence(smallest,mid,varName)
    resultSecondHalf = checkEquivalence(mid,largest, varName)
    flagFirstHalfNeq = 1
    flagSecondHalfNeq = 1
    if resultFirstHalf == unsat:
          #todo just capture the result, do not divide anymore
        #   print("equivalent for ", smallest, " to ", mid-1, " range")
          list = [smallest, mid,  mid-smallest, varName]
          equivalenctList.append(list)
          flagFirstHalfNeq = 0
          maxDepth = maxDepth if (maxDepth-1)<0 else maxDepth-1
    if resultSecondHalf == unsat: 
         #todo just capture the result, do not divide anymore
        #  print("equivalent for ", mid, " to ", largest-1, " range")
         list = [mid, largest, largest-mid, varName]
         equivalenctList.append(list)
         flagSecondHalfNeq = 0
         maxDepth = maxDepth if (maxDepth-1)<0 else maxDepth-1
    #if flagFirstHalfNeq==1 and flagSecondHalfNeq==0:
    if flagFirstHalfNeq==1:
          #print("new smallest ", smallest, " new large ", mid)
        #   print("Not equivalent; go further case 1 ",maxDepth)
          if checkTotalNonEq(smallest,mid,varName) == unsat: #This will only work for one variable
            #    print("Total nonequivalence for ", smallest, " to ", mid-1)
               list = [smallest,mid-1]
               nonEqList.append(list)
          else:
            #print("in non check 1 ", smallest, " ", mid)
            divideNCheck(smallest,mid,varName, maxDepth+1, equivalenctList, nonEqList,threshold)
    #elif flagSecondHalfNeq==1 and flagFirstHalfNeq==0:
    if flagSecondHalfNeq==1:
          #print("new smallest ", mid, " new large ", largest)
        #   print("Not equivalent; go further case 2 ",maxDepth)
          if checkTotalNonEq(mid,largest,varName) == unsat:
               print("Total nonequivalence for ", mid, " to ", largest-1)
               resultFile.write("Total nonequivalence for "+str(mid)+" to "+str(largest-1)+"\n")
               list = [mid,largest-1]
               nonEqList.append(list)
          else:
             #print("in non check ", mid, " ", largest)
             divideNCheck(mid,largest, varName, maxDepth+1, equivalenctList, nonEqList,threshold) 
    return




def algoDivideNConquer():
    print("=======================ALGO : Divide And Search==================")
    resultFile.write("=======================ALGO : Divide And Search==================\n")
    #equivalenctListVar = []
    totalVarEquivalence = 1
    threshold=8
    if len(variables)>=2:
        threshold = 4
    for i in range(len(variables)):
        print("variable is : ", variables[i])
        resultFile.write("variable is : "+str(variables[i])+"\n")
        if variables[i]=="fp.to_ieee_bv" :
            continue
        listVar = []
        nonListVar = []
        divideNCheck(MIN_value, MAX_value, variables[i], 0, listVar, nonListVar,threshold)
        #equivalenctListVar.append(listVar)
        totalEq = 0
        totalNeq = 0
    #     print("-----------------------------")
    #     print(listVar)
    #     print("-----------------------------")
        for j in range(len(listVar)):
            totalEq=totalEq+int(listVar[j][2])
        print("++++++++++++++++++++++++++++++++++++++++")
        resultFile.write("++++++++++++++++++++++++++++++++++++++++\n")
        for j in range(len(nonListVar)):
             totalNeq = totalNeq+(nonListVar[j][1]-nonListVar[j][0]+1)
             print(nonListVar[j])
             resultFile.write(str(nonListVar[j])+"\n")
        print("++++++++++++++++++++++++++++++++++++++++")
        resultFile.write("++++++++++++++++++++++++++++++++++++++++\n")
        #The largest variable is missing in the checking
        beforeTotalEq = totalEq
        # print("Max value is ", MAX_value)   
        # print(checkEquivalenceSingle(MAX_value, variables[i]))
        totalEq = totalEq+1 if checkEquivalenceSingle(MAX_value, variables[i])==unsat else totalEq
        if beforeTotalEq==totalEq:
            totalNeq = totalNeq+1
        print("Before ", variables[i], " is ", beforeTotalEq, " After ", totalEq)
        resultFile.write("Before "+str(variables[i])+" is "+str(beforeTotalEq)+" After "+str(totalEq)+"\n")
        print("Total equivalence for variable ", variables[i], " is ", totalEq )
        resultFile.write("Total equivalence for variable "+str(variables[i])+" is "+str(totalEq)+"\n")
        totalEqListDivideNCon.append(totalEq)
        print("Total nonequivalence for variable ", variables[i], " is ", totalNeq )
        resultFile.write("Total nonequivalence for variable "+str(variables[i])+" is "+str(totalNeq)+"\n")
        totalNeqListDivideNcon.append(totalNeq)
        print("Total range is ", (MAX_value-MIN_value+1))
        resultFile.write("Total range is "+str((MAX_value-MIN_value+1))+"\n")
        print("Percentage of variable ", variables[i], (totalEq*100)/(MAX_value-MIN_value+1), "%")
        resultFile.write("Percentage of variable "+str(variables[i])+" "+str((totalEq*100)/(MAX_value-MIN_value+1))+"%\n")
        
        totalVarEquivalence=totalVarEquivalence*totalEq
    # print("===============================")
    # print("Total percentage of ", len(variables), " variables is ", (totalVarEquivalence*100)/((MAX_value-MIN_value+1)**(len(variables))), " %")
    # print("===============================")
    # print("===========END RESULT of ALGO : Divide And Search==================")



#=======start of calculation================
start = time.time()
algoDivideNConquer()
print("==============================================")
resultFile.write("==============================================\n")
print("==============================================")
resultFile.write("==============================================\n")
if bitRange.startswith('unsigned') and bitRange!="unsigned_32":
     algoFindByRangeUnsigned()
else:
    algoFindByRange()
   
print("==============================================")
resultFile.write("==============================================\n")
print("==============================================")
resultFile.write("==============================================\n")

totalLowerBoundEq = 1
finalEqList = []
finalNeqList = []
# finalEqList = [2581, 4294967294 ]
# finalNeqList = [4294964715, 2]
print("Total domain is ", (MAX_value-MIN_value+1)**(len(variables)))
resultFile.write("Total domain is "+str((MAX_value-MIN_value+1)**(len(variables)))+"\n")
for i in range(len(variables)):
     print("variable ", variables[i])
     resultFile.write("variable "+str(variables[i])+"\n")
     if totalEqListDivideNCon[i]>totalEqListRange[i]:
          print("total equivalent domain is ", totalEqListDivideNCon[i])
          resultFile.write("total equivalent domain is "+str(totalEqListDivideNCon[i])+"\n")
          print("total nonequivalent domain is ", totalNeqListDivideNcon[i])
          resultFile.write("total nonequivalent domain is "+str(totalNeqListDivideNcon[i])+"\n")
          finalEqList.append(totalEqListDivideNCon[i])
          finalNeqList.append(totalNeqListDivideNcon[i])
     else:
          print("total equivalent domain is ", totalEqListRange[i])
          resultFile.write("total equivalent domain is "+str(totalEqListRange[i])+"\n")
          print("total nonequivalent domain is ", totalNeqListRange[i])
          resultFile.write("total nonequivalent domain is "+str(totalNeqListRange[i])+"\n")
          finalEqList.append(totalEqListRange[i])
          finalNeqList.append(totalNeqListRange[i])


print("===================Percentage of equivalence domain===================")
resultFile.write("===================Percentage of equivalence domain===================\n")
totalEqForall=0
for i in range(len(variables)):
     print("For variable ",variables[i])
     resultFile.write("For variable "+str(variables[i])+"\n")
     totalEqforOne=finalEqList[i]
     for j in range(i+1,len(variables)):
          totalEqforOne=totalEqforOne*(MAX_value-MIN_value+1)
    #  print("total eq ", totalEqforOne)
    #  print("total dom ", (MAX_value-MIN_value+1))
     for j in reversed(range(i)):
          totalEqforOne=totalEqforOne*finalNeqList[j]
    #  print("total eq ", totalEqforOne)
     totalEqForall=totalEqForall+totalEqforOne
print("total domain ", (MAX_value-MIN_value+1)**(len(variables)))
print("Final total equivalent tuples are ",totalEqForall)
resultFile.write("Final total equivalent tuples are "+str(totalEqForall)+"\n")
print("Final percentage of tuples ", (totalEqForall*100)/((MAX_value-MIN_value+1)**(len(variables))), "%")
resultFile.write("Final percentage of tuples "+str((totalEqForall*100)/((MAX_value-MIN_value+1)**(len(variables))))+"%\n")
totalNeqTuple=((MAX_value-MIN_value+1)**(len(variables)))-totalEqForall
print("Final upper bounded nonequivalent tuples are ",totalNeqTuple)
resultFile.write("Final upper bounded nonequivalent tuples are "+str(totalNeqTuple)+"\n")
print("Final percentage of tuples ", (totalNeqTuple*100)/((MAX_value-MIN_value+1)**(len(variables))), "%")
resultFile.write("Final percentage of tuples "+str((totalNeqTuple*100)/((MAX_value-MIN_value+1)**(len(variables))))+"%\n")
end = time.time()
print("total time ", end-start, " s")
resultFile.write("total time "+str(end-start)+" s\n")
print("total time ", (end-start)/60, " m")
resultFile.write("total time "+str((end-start)/60)+" m\n")
resultFile.close()