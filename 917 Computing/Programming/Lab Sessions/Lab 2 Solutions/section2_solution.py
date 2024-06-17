"""This program should print out the name of the day with the smallest temperature difference"""

data_file = open("weather.csv","r")
data = data_file.readlines()

#Remove the header
data = data[1:]

#Loop over the data
smallest_value = 10000
smallest_day = -1000
for line in data:
    values = line.split(",")
    difference = abs(int(values[1]) - int(values[2]))
    if difference < smallest_value:
        smallest_value = difference
        smallest_day = values[0]
        
print(smallest_day)