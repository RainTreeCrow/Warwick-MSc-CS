teams = []

f = open("football.csv", 'r')
line = f.readline()
line = f.readline()
while (line):
    colums = line.rstrip('\n').split(',')
    # print(colums)
    team = colums[0]
    difference = abs(int(colums[5]) - int(colums[6]))
    # print(difference)
    teams.append([team, difference])
    line = f.readline()
f.close()

teams.sort(key=lambda pair: pair[1])
print(teams[0][0])