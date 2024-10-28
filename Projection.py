from z3 import *
import sys
import time

start = time.time()
# #read the neq file from the argument
fileName = sys.argv[1]
# print(fileName)

#parsing the neq to smt2 file
f = z3.parse_smt2_file(fileName)


count = 0
s = Solver()
s1= Goal()
s.add(f)
# print(s.sexpr())
# Parse the S-expression string
parsed_expr = parse_smt2_string(s.sexpr())
# print(parsed_expr)

# Extract the first assertion from the parsed expressions
bool_ref_expr = parsed_expr[0]

# Print the BoolRef object
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# print(bool_ref_expr.sexpr())
g = Goal()
g.add(Exists(R, bool_ref_expr))
t = Tactic('qe')
result=t(g).sexpr()
end=time.time()
total_time=end-start
location=sys.argv[2]
name=sys.argv[3]
# # f_write=open(location+"/output"+name+".txt","w")
# # f_write.write(str(t(g).sexpr()))
# # f_write.close()
# f_write=open(location+"/time"+name+".txt","w")
# f_write.write(str(total_time)+" s")
# f_write.close()
# # print(t(g))

# print(type(t(g)))
solver2=Solver()
ef1 = And(list(t(g)[0]))
solver2.add(ef1)
# print(ef1.sexpr())
# print(type(ef1))
print(solver2.to_smt2())
f_write=open(location+name+"Exist32.smt2","w")
f_write.write(str(solver2.to_smt2()))
f_write.close()
