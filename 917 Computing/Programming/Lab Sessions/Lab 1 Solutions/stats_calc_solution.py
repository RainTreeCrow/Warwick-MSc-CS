"""
A simple statistics calculator
"""
values = []

value = input("Enter numbers. When finished type 'stop' to calculate statistics ")

while value != "stop":
    values.append(int(value))
    value = input()
    
print("=== Results ===")
print("You entered " + str(len(values)) + " values")

#Calulate min_value 
min_value = values[0]
for v in values:
    if v < min_value:
        min_value = v


print("Minimum value is " + str(min_value))

#Calculaate max_value
max_value = values[0]
for v in values: 
    if v > max_value:
        max_value = v
        
print("Max value is " + str(max_value))

values_sum = 0
for v in values:
    values_sum += v

print("Mean value is " + str(values_sum/len(values)))