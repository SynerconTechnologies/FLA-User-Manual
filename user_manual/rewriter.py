#!/usr/bin/python3

x=[]
with open("FLA Users Manual.tex") as f:
   for line in f:
      x.append(line)

for line in range(len(x)):
   if "\\string\"" in x[line]:
      print('FOUDND')
      y = x[line].split('\\string"')
      if len(y) == 3:
         print('EXTRA')
         z = y[1].lower().replace(' ', '_')
         print(z)
         x[line] = y[0] + '../media//' + z + y[2]

with open("FLA Users Manual(sub).tex", 'w+') as f:
   for line in x:
      f.write(line)
