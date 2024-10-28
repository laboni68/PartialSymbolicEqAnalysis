from z3 import *
import sys
import time

start = time.time()
#read the neq file from the argument
fileName = sys.argv[1]
print(fileName)

#parsing the neq to smt2 file
f = z3.parse_smt2_file(fileName)


MAX_value_64 = 9223372036854775807
MIN_value_64 = -9223372036854775808
MAX_value_32 = 2147483647
MIN_value_32 = -2147483648
MAX_value_16 = 32767
MIN_value_16 = -32768
MAX_value_8 = 255
MIN_value_8 = -256
MAX_value_random = 256
MIN_value_random = 0
MAX_value = MAX_value_32
MIN_value = MIN_value_32
bitRange = sys.argv[2]
if bitRange=='64':
    print("Calculate for 64 bits")
    MAX_value = MAX_value_64
    MIN_value = MIN_value_64
    valCheck = 65
elif bitRange=='16':
    print("Calculate for 16 bits")
    MAX_value = MAX_value_16
    MIN_value = MIN_value_16
    valCheck = 17
elif bitRange=='8':
    print("Calculate for 8 bits")
    MAX_value = MAX_value_8
    MIN_value = MIN_value_8
    valCheck = 9
elif bitRange=='random' or bitRange=='r' or bitRange=='R':
    print("Calculate for random number range")
    MAX_value = MAX_value_random
    MIN_value = MIN_value_random
    valCheck = 9
else:
    print("Calculate for 32 bits")




count = 0
s = Solver()
s.add(f)
s.check()

for var in s.model():
    print(var.name())
    if var.name()=="fp.to_ieee_bv":
        continue
    s.add(var()>=MIN_value)
    s.add(var()<=MAX_value)

while s.check() == sat:
    p=False
    print(s.model(), " count ", count)
    for var in s.model():
        if var.name()=="R" or var.name()=='return': 
            continue
        p=Or(p, var()!=s.model()[var()])
    #print(p)
    # f2 = eval(f"p")
    s.add(p)
    count += 1
print("count", count)

end = time.time()
print("Total time ", end-start)


