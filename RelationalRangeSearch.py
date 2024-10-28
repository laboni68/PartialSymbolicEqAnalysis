from z3 import *
import sys
import math
import random
import time

#Different argument from command order and description
## Arguments in the command
####1. smt2 file name of NEQ 
####2. smt2 file name of EQ
####3. bit range : 32 bit, 64 bit , 8 bit or random bit, if anything else then by default 32 bit
####4. return variable name : R or return. If anything else : then return is the default value

#Read the file names from command
##file name for the Neq constraint from the summaries
fileName = sys.argv[1]
print(fileName)

##file name of the eq constraint summary1 ^ summary2
fileNameEQ = sys.argv[2]
print(fileNameEQ)


#Read the bir range from argument
bitRange = sys.argv[3]


location=sys.argv[4]
# resultFile=open(location+"quantitativeResultMulti.txt","w")
resultFile=open(location+"quantitativeResultNon-iterativeRecursive.txt","w")
resultFile.write(fileName)
resultFile.write(fileNameEQ)
# home = sys.argv[5]
# fileName = home + fileName
# fileNameEQ = home + fileNameEQ

#parsing the smt2 files
##parsing !((S1^S2)V(!S1^!S2))
f = z3.parse_smt2_file(fileName)
fEq =  z3.parse_smt2_file(fileNameEQ)

##Find variables of the mdoel
variables = []
sVar = Solver()
sVar.add(f)
print("Satisfiability of solver : ", sVar.check())
resultFile.write("Satisfiability of solver : "+str(sVar.check())+"\n")
for var in sVar.model():
    variables.append(var.name())
    print(var)
    resultFile.write(str(var)+"\n")


#Integer values of different bit ranges
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
MAX_value_8 = 255
MIN_value_8 = -256
## for random (defined here; can be changed)
MAX_value_random = 2047
MIN_value_random = -2048
## default value of MAX and MIN is set for 32 bit integer
MAX_value = MAX_value_32
MIN_value = MIN_value_32



#Setting the MIN_value and MAX_value from the bit range
if bitRange=='64':
    print("Calculate for 64 bits")
    resultFile.write("Calculate for 64 bits\n")
    MAX_value = MAX_value_64
    MIN_value = MIN_value_64
    valCheck = 65 # Required for the Range algo
elif bitRange=='16':
    print("Calculate for 16 bits")
    resultFile.write("Calculate for 16 bits\n")
    MAX_value = MAX_value_16
    MIN_value = MIN_value_16
    valCheck = 17 # Required for the Range algo
elif bitRange=='8':
    print("Calculate for 8 bits")
    resultFile.write("Calculate for 8 bits\n")
    MAX_value = MAX_value_8
    MIN_value = MIN_value_8
    valCheck = 9 # Required for the Range algo
elif bitRange=='random' or bitRange=='r' or bitRange=='R':
    print("Calculate for random number range")
    resultFile.write("Calculate for random number range\n")
    MAX_value = MAX_value_random
    MIN_value = MIN_value_random
    valCheck = 9 # Required for the Range algo
else:
    ##default value of valCheck
    valCheck = 33
    #use the default value
    print("Calculate for 32 bits")
    resultFile.write("Calculate for 32 bits\n")


variables.remove('R') #Most recent Binary-DSE algo return "R" variable



#function for precise calculation within range
##========TODO: Make one single function for both calculation======
##function for calculation binary range
def claculatePreciseRange(m1, mid, varName):
    # print("in function")
    s =Solver()
    s.add(f)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv":
                continue
        if var.name()!= varName :
                continue
        s.add(var()>m1)
        s.add(var()<=mid)
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
                    solverMax[i].add(var()<=MAX_value)
                    continue
                solverMax[i].add(var()>0)
                div = 2**val
                solverMax[i].add(var()<=math.ceil(MAX_value/div))
            # print(solverMax[i].check(), " val ", val, " div ", div, " checked until ", MAX_value/div)
            if(val==valCheck or solverMax[i].check() == unsat):
                break
            val=val+1
        if val==valCheck:
            maxRange.append(0)
            print("val ", val," div ", div, "max_value 0 : 0 is not included")
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value 0 : 0 is not included\n")
        elif val==0:
            maxRange.append(math.ceil(MAX_value/div))
            print("val ", val," div ", div, "max_value ", maxRange[i])
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value "+str(maxRange[i])+"\n")
        else:
            # print("val ", val)
            maxRange.append(math.ceil(MAX_value/div))
            m1 = math.ceil(MAX_value/div)
            m2 = math.ceil(MAX_value/(2**(val-1)))
            mid = math.ceil(m1+(m2-m1)/2)
            ##============TODO : check for the precisionIncheck : taking ceiling; do we need this now?========
            while (abs(mid-m1)>=precisionIncheck and abs(m2-mid)>=precisionIncheck) :
                if claculatePreciseRange(m1, mid, variables[i]) == unsat:
                    maxRange[i]=mid
                    m1 = mid
                    mid = math.ceil(m1+(m2-m1)/2)
                else:
                    m2 = mid
                    mid = math.ceil(m1 + (mid-m1)/2)
                    
            print("val ", val," div ", div, "max_value ", maxRange[i])
            resultFile.write("val "+str(val)+" div "+str(div)+" max_value "+str(maxRange[i])+"\n")

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
                    solverMax[i].add(var()>=MIN_value)
                    continue
                solverMin[i].add(var()<0) #equiality is removed for checking the odd range
                div = 2**val
                solverMin[i].add(var()>=MIN_value/div)
            if(val==valCheck or solverMin[i].check() == unsat):
                break
            val=val+1
        print(solverMin[i].check())
        resultFile.write(str(solverMin[i].check())+"\n")
        if val==valCheck:
            minRange.append(0)
            print("val ", val," div ", div, "min_value 0 : 0 is not included")
            resultFile.write("val "+str(val)+" div "+str(div)+" min_value 0 : 0 is not included\n")
        elif val==0:
            minRange.append(MIN_value/div)
            print("val ", val," div ", div, "min_value ", minRange[i])
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
                    solverZero.add(var()>=MIN_value)
                    solverZero.add(var()<=MAX_value)
                    continue
                solverZero.add(var()==0)
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
        print("========================")
        resultFile.write("=======================\n")
        print("variable : ", variables[i])
        resultFile.write("variable : "+str(variables[i])+"\n")
        print("Max ", maxRange[i], " Min ", minRange[i])
        resultFile.write("Max "+str(maxRange[i])+" Min "+str(minRange[i])+"\n")
        print("Range diff ",maxRange[i]-minRange[i]+zeroIncluded[i])
        resultFile.write("Range diff "+str(maxRange[i]-minRange[i]+zeroIncluded[i])+"\n")
        equivalenceDomain=equivalenceDomain*(maxRange[i]-minRange[i]+zeroIncluded[i])
        print("Percentage of varable ", variables[i], " is ", ((maxRange[i]-minRange[i]+zeroIncluded[i])*100)/(MAX_value-MIN_value+1), "%")
        resultFile.write("Percentage of varable "+str(variables[i])+" is "+str(((maxRange[i]-minRange[i]+zeroIncluded[i])*100)/(MAX_value-MIN_value+1))+"%\n")
        print("========================")
        resultFile.write("=======================\n")

    print("Total domain : ", totalDomain)
    resultFile.write("Total domain : "+str(totalDomain)+"\n")
    print("Equivalence domain : ", equivalenceDomain)
    resultFile.write("Equivalence domain : "+str(equivalenceDomain)+"\n")
    if totalDomain==1 and equivalenceDomain==1:
        print("Minimum percentage of equivalent domain 0%")
        resultFile.write("Minimum percentage of equivalent domain 0%\n")
    else:
        print("Minimum percentage of equivalent domain ", (equivalenceDomain*100)/totalDomain, "%")
        resultFile.write("Minimum percentage of equivalent domain "+str((equivalenceDomain*100)/totalDomain)+"%\n")
    print("==============================================")
    resultFile.write("==============================================\n")
    print("===========END RESULT of ALGO : Range Search==================")
    resultFile.write("===========END RESULT of ALGO : Range Search==================\n")



#Divide and Conquer Algorithm : To search the whole domain
#check equivalence function for Divide and Conquer Algorithm
def checkEquivalence(listOfRange):
    s =Solver()
    s.add(f)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv" or var.name()==sys.argv[4]:
                continue
        for i in range (len(listOfRange)):
            if var.name()==listOfRange[i][2]:
                s.add(var()>=listOfRange[i][0])
                s.add(var()<listOfRange[i][1])
    return s.check()

def checkTotalNonEq(listOfRange):
    #   randomThreshold = random.randint(0,threshold)
    #   print("------------------------------------")
    #   print("The threshold is ", randomThreshold)
    s = Solver()
    s.add(fEq)
    s.check()
    for var in s.model():
        if var.name()=="fp.to_ieee_bv" or var.name()==sys.argv[4]:
                continue
        for i in range (len(listOfRange)):
            if var.name()==listOfRange[i][2]:
                s.add(var()>=listOfRange[i][0])
                s.add(var()<listOfRange[i][1])
    return s.check()



# function to find cartesian product of two sets
def cartesianProduct(set_a, set_b):
	result =[]
	for i in range(0, len(set_a)):
		for j in range(0, len(set_b)):

			# for handling case having cartesian
			# product first time of two sets
			if type(set_a[i]) != list:		
				set_a[i] = [set_a[i]]
				
			# copying all the members
			# of set_a to temp
			temp = [num for num in set_a[i]]
			
			# add member of set_b to
			# temp to have cartesian product	
			temp.append(set_b[j])			
			result.append(temp)
			
	return result

# Function to do a cartesian
# product of N sets
def Cartesian(list_a, n):
	# result of cartesian product
	# of all the sets taken two at a time
    if n==1:
         return[[list_a[0][0]],[list_a[0][1]]]
    temp = list_a[0]
	# do product of N sets
    for i in range(1, n):
         temp = cartesianProduct(temp, list_a[i])
    return temp

#function for Divide and check for equivalence
def divideNCheck(numberOfVar,listOfRanges, depth, eqRange, neqRange,threshold):
    if depth==threshold:
        neqRange.append(listOfRanges)
        return
    listOfNewRanges = []
    for i in range(numberOfVar):
        if listOfRanges[i][1]<=listOfRanges[i][0]:
            #  neqRange.append(listOfRanges)
             return
        mid = math.floor(listOfRanges[i][0]+(listOfRanges[i][1]-listOfRanges[i][0])/2)
        pair = [(listOfRanges[i][0], mid, listOfRanges[i][2]),(mid,listOfRanges[i][1], listOfRanges[i][2])]
        listOfNewRanges.append(pair)
    newList = Cartesian(listOfNewRanges,len(listOfNewRanges))
    # print(newList)
    # print(len(newList))
    for i in range(len(newList)):
        #print(newList[i], " ", len(newList[i]))
        if checkEquivalence(newList[i])== unsat:
             print("total equivalence in range ", newList[i])
             resultFile.write("total equivalence in range "+str(newList[i])+"\n")
             eqRange.append(newList[i])
            #  depth = depth if (depth-1)<0 else depth-1
             continue
        if checkTotalNonEq(newList[i])== unsat:
             print("total nonequivalence in range", newList[i])
             resultFile.write("total nonequivalence in range"+str(newList[i])+"\n")
             neqRange.append(newList[i])
             continue
        divideNCheck(numberOfVar, newList[i],depth+1, eqRange, neqRange,threshold)


def algoDivideNConquer():
   print("Multi dimensional divide N search")
   resultFile.write("Multi dimensional divide N search\n")
   #listOfRanges [[min,max],[min,max],[min,max]]
   listOfRanges = []
   eqRange = []
   neqRange = []
   for i in range(len(variables)):
        print("i = ", i, " is ", variables[i])
        resultFile.write("i = "+str(i)+" is "+str(variables[i])+"\n")
        # listOfRanges.append([MIN_value,MAX_value+1,variables[i]])
        listOfRanges.append([MIN_value,MAX_value,variables[i]])
        print(listOfRanges[i])
        resultFile.write(str(listOfRanges[i])+"\n")
   threshold=4
   if len(variables)==1:
        threshold = 8
   divideNCheck(len(variables),listOfRanges,0,eqRange, neqRange,threshold)
   print("----------EQ-----------")
   resultFile.write("----------EQ-----------\n")
   totalEq=0
   for eq in eqRange:
        totalTup=1
        for i in range(len(eq)):
             totalTup=totalTup*(eq[i][1]-eq[i][0])
        totalEq=totalEq+totalTup
   print("---------NEQ-----------")
   resultFile.write("---------NEQ-----------\n")
   print(neqRange)
   resultFile.write(str(neqRange)+"\n")
   totalNeq=0
   for neq in neqRange:
        totalTup=1
        for i in range(len(neq)):
             totalTup=totalTup*(neq[i][1]-neq[i][0])
        totalNeq=totalNeq+totalTup
   print("----------------------------------")
   resultFile.write("----------------------------------\n")
   print("total equivalence lower bound ",totalEq, " total ", (MAX_value-MIN_value+1)**(len(variables)))
   resultFile.write("total equivalence lower bound "+str(totalEq)+" total "+str((MAX_value-MIN_value+1)**(len(variables)))+"\n")
   print("Percentage ", (totalEq*100)/((MAX_value-MIN_value+1)**(len(variables))), "%")
   resultFile.write("Percentage "+str((totalEq*100)/((MAX_value-MIN_value+1)**(len(variables))))+"%\n")
   print("total nonequivalence upper bound ",totalNeq, " total ", (MAX_value-MIN_value+1)**(len(variables)))
   resultFile.write("total nonequivalence upper bound "+str(totalNeq)+" total "+str((MAX_value-MIN_value+1)**(len(variables)))+"\n")
   print("Percentage ", (totalNeq*100)/((MAX_value-MIN_value+1)**(len(variables))), "%")
   resultFile.write("Percentage "+str((totalNeq*100)/((MAX_value-MIN_value+1)**(len(variables))))+"%\n")
   print("sum of totalEq and totalNeq ", totalEq+totalNeq)
   resultFile.write("sum of totalEq and totalNeq "+str(totalEq+totalNeq)+"\n")



start = time.time()
algoDivideNConquer()
end = time.time()
print("total time ", end-start, " s")
resultFile.write("total time "+str(end-start)+" s\n")
print("total time ", (end-start)/60, " m")
resultFile.write("total time "+str((end-start)/60)+" m\n")
resultFile.close()
