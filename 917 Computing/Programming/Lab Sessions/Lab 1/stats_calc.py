"""
A simple statistics calculator
"""
values = []
print("Enter numbers. When finished type 'stop' to calculate statistics.")

#Collect numbers into values list
enter = input()
while enter != "stop":
    values.append(int(enter))
    enter = input()
    
print("=== Results ===")
print("You entered " + str(len(values)) + " values")
print("Minimumm number: " + str(min(values)))
print("Maximum number: " + str(max(values)))
print("Mean: " + str(sum(values) / len(values)))

#Now look for max and min values

#Now calculate mean