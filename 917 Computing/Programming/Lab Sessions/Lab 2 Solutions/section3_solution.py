"""This module provides a method for calulating the minimum difference between two columns"""

def min_difference(filename, result_column, column_1, column_2):
    data_file = open(filename,"r")
    data = data_file.readlines()

    #Remove the header
    data = data[1:]

    #Loop over the data
    smallest_value = 10000
    smallest_result = "Not set"
    for line in data:
        values = line.split(",")
        difference = abs(int(values[column_1]) - int(values[column_2]))
        if difference < smallest_value:
            smallest_value = difference
            smallest_result = values[result_column]

    return smallest_result
    
if __name__ == "__main__":
    team = min_difference("football.csv",0,5,6)
    print("{} has the highest goal difference".format(team))
    
    day = min_difference("weather.csv",0,1,2)
    print("Day {} had the smallest difference in temperature".format(day))