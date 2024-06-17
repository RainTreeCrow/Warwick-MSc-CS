import csv
import time
import calendar

"""
    Part A
    Please provide definitions for the following functions
"""

# highest_price(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def highest_price(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    highest = float("-inf")
    for row in data:
        if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
            high = float(row['high'])
            if high > highest:
                highest = high
    return highest


# lowest_price(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def lowest_price(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    lowest = float("inf")
    for row in data:
        if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
            low = float(row['low'])
            if low < lowest:
                lowest = low
    return lowest


# max_volume(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def max_volume(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    max_vol = float("-inf")
    for row in data:
        if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
            vol = float(row['volumefrom'])
            if vol > max_vol:
                max_vol = vol
    return max_vol


# best_avg_price(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def best_avg_price(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    best_avg = float("-inf")
    for row in data:
        if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
            avg = float(row['volumeto']) / float(row['volumefrom'])
            if avg > best_avg:
                best_avg = avg
    return best_avg


# moving_average(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def moving_average(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    sum_avg = 0
    count_days = 0
    for row in data:
        if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
            count_days += 1
            sum_avg += float(row['volumeto']) / float(row['volumefrom'])
    return round(sum_avg / count_days, 2)


# Replace the body of this main function for your testing purposes
if __name__ == "__main__":
    # Start the program

    # Example variable initialization
    # data is always the cryptocompare_btc.csv read in using a DictReader
    
    data = []
    with open("cryptocompare_btc.csv", "r") as f:
        reader = csv.DictReader(f)
        data = [r for r in reader]
    
    # access individual rows from data using list indices
    # first_row = data[0]
    # to access row values, use relevant column heading in csv
    # print(f"timestamp = {first_row['time']}")
    # print(f"daily high = {first_row['high']}")
    # print(f"volume in BTC = {first_row['volumefrom']}")

    tests = [
        ("01/01/2016", "31/01/2016"),
        ("01/02/2016", "28/02/2016"),
        ("01/12/2016", "31/12/2016")
    ]
    print(" Tests for highest_price ".center(50, '*'))
    print("Start Date\tEnd Date\tExpected Result")
    for start_date, end_date in tests:
        print("{}\t{}\t{}".format(start_date, end_date, highest_price(data, start_date, end_date)))
    print("")

    print(" Tests for lowest_price ".center(50, '*'))
    print("Start Date\tEnd Date\tExpected Result")
    for start_date, end_date in tests:
        print("{}\t{}\t{}".format(start_date, end_date, lowest_price(data, start_date, end_date)))
    print("")

    print(" Tests for max_volume ".center(50, '*'))
    print("Start Date\tEnd Date\tExpected Result")
    for start_date, end_date in tests:
        print("{}\t{}\t{}".format(start_date, end_date, max_volume(data, start_date, end_date)))
    print("")

    print(" Tests for best_average_price ".center(50, '*'))
    print("Start Date\tEnd Date\tExpected Result")
    for start_date, end_date in tests:
        print("{}\t{}\t{}".format(start_date, end_date, best_avg_price(data, start_date, end_date)))
    print("")

    print(" Tests for moving_average ".center(50, '*'))
    print("Start Date\tEnd Date\tExpected Result")
    for start_date, end_date in tests:
        print("{}\t{}\t{}".format(start_date, end_date, moving_average(data, start_date, end_date)))
    print("")