def difference_colums(file_name, tag_col, first_col, second_col):
    res = []
    f = open(file_name, 'r')
    line = f.readline()
    line = f.readline()
    while (line):
        colums = line.rstrip('\n').split(',')
        tag = colums[tag_col - 1]
        difference = abs(int(colums[first_col - 1]) - int(colums[second_col - 1]))
        res.append([tag, difference])
        line = f.readline()
    f.close()
    return res

goal_differences = difference_colums("football.csv", 1, 6, 7)
for team, goal_difference in goal_differences:
    print(team + ": " + str(goal_difference))
print("==========")
temperature_spreads = difference_colums("weather.csv", 1, 2, 3)
for day, temperature_spread in temperature_spreads:
    print(day + ": " + str(temperature_spread))