import csv

def difference_colums(csv_name, tag_name, first_name, second_name):
    res = []
    with open(csv_name, 'r') as csv_file:
        csv_reader = csv.DictReader(csv_file)
        for row in csv_reader:
            tag = row[tag_name]
            difference = abs(int(row[first_name]) - int(row[second_name]))
            res.append([tag, difference])
    return res
            
goal_differences = difference_colums("football.csv", 'Team', 'Goals', 'Goals Allowed')
for team, goal_difference in goal_differences:
    print(team + ": " + str(goal_difference))
print("==========")
temperature_spreads = difference_colums("weather.csv", 'Day', 'MxT', 'MnT')
for day, temperature_spread in temperature_spreads:
    print(day + ": " + str(temperature_spread))