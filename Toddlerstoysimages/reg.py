import re
'''find
findall
search

[]
/ zero or more 
*
+ one or more
{} fixed
%
^ starting side
$'''

str = ['This is testing      is    string','The rain   is   coming','The rain is coming in rajkot']
for s in str:
    x = re.search("is",s)
    if(x):
        print(x.start())
        print(x.end())

for s in str:
    print(s)

txt = 'This is string regular expression demo';
s1 = txt.replace(' is ',' are ');
print(s1)
for s in str:
    x = re.split("\s+is\s+",s)
    for i in x:
        print(i,end="")
        print(' are ', end="")
        print('')
for s in str:
    print(s)










    
    
