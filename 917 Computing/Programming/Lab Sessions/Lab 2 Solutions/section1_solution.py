"""This program should print out the name of the football team with the smallest goal difference"""

data_file = open("football.csv","r")
data = data_file.readlines()

#Remove the header
data = data[1:]

#Loop over the data
smallest_value = 10000
smallest_team = "Not set"
for line in data:
    values = line.split(",")
    difference = abs(int(values[5]) - int(values[6]))
    if difference < smallest_value:
        smallest_value = difference
        smallest_team = values[0]

print(smallest_team)