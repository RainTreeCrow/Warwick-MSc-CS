days = []

f = open("weather.csv", 'r')
line = f.readline()
line = f.readline()
while (line):
    colums = line.rstrip('\n').split(',')
    day = colums[0]
    difference = abs(int(colums[1]) - int(colums[2]))
    days.append([day, difference])
    line = f.readline()
f.close()

days.sort(key=lambda pair: pair[1])
print(days[0][0])