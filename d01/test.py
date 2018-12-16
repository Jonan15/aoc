import sys

inp = open(sys.argv[1], 'r')
x = 0
d = set()
d.add(x)

r = True
#while (r):
#  for line in f:
#    x = x + int(line)
#    if x in d:
#      print(x)
#      r = False
#    d.add(x)

for line in inp:
  x = x + int(line)

print(x)
