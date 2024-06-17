import csv
import time
import calendar
import sys

"""
    Part B
    Please provide definitions for the following functions *WITH EXCEPTION HANDLERS*
"""

class DateOORError(Exception):
    def __str__(self):
        return "date value is out of range"

class EndStartError(Exception):
    def __str__(self):
        return "end date must be larger than start date"


# get_epoch(data, start_date, end_date) -> int, int
# tests if start and end date are valid, in range, etc
# returns their corresponding epoch timestamp
def get_epoch(data, start_date, end_date):
    try:
        start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
        end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
        if end_epoch < start_epoch:
            raise EndStartError
    except ValueError:
        print("Error: invalid date value")
        sys.exit()
    except EndStartError as ese:
        print(f"Error: {str(ese)}")
        sys.exit()
    else:
        try:
            if start_epoch < min([int(row['time']) for row in data]):
                raise DateOORError
            elif end_epoch > max([int(row['time']) for row in data]):
                raise DateOORError
        except KeyError:
                print("Error: requested column is missing from dataset")
                sys.exit()
        except DateOORError as doore:
            print(f"Error: {str(doore)}")
            sys.exit()
    return start_epoch, end_epoch


# highest_price(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def highest_price(data, start_date, end_date):
    start_epoch, end_epoch = get_epoch(data, start_date, end_date)
    highest = float("-inf")
    for row in data:
        try:
            if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                high = float(row['high'])
                if high > highest:
                    highest = high
        except KeyError:
            print("Error: requested column is missing from dataset")
            sys.exit()
    return highest


# lowest_price(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def lowest_price(data, start_date, end_date):
    start_epoch, end_epoch = get_epoch(data, start_date, end_date)
    lowest = float("inf")
    for row in data:
        try:
            if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                low = float(row['low'])
                if low < lowest:
                    lowest = low
        except KeyError:
            print("Error: requested column is missing from dataset")
            sys.exit()
    return lowest


# max_volume(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def max_volume(data, start_date, end_date):
    start_epoch, end_epoch = get_epoch(data, start_date, end_date)
    max_vol = float("-inf")
    for row in data:
        try:
            if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                vol = float(row['volumefrom'])
                if vol > max_vol:
                    max_vol = vol
        except KeyError:
            print("Error: requested column is missing from dataset")
            sys.exit()
    return max_vol


# best_avg_price(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def best_avg_price(data, start_date, end_date):
    start_epoch, end_epoch = get_epoch(data, start_date, end_date)
    best_avg = float("-inf")
    for row in data:
        try:
            if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                avg = float(row['volumeto']) / float(row['volumefrom'])
                if avg > best_avg:
                    best_avg = avg
        except KeyError:
            print("Error: requested column is missing from dataset")
            sys.exit()
    return best_avg


# moving_average(data, start_date, end_date) -> float
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def moving_average(data, start_date, end_date):
    start_epoch, end_epoch = get_epoch(data, start_date, end_date)
    sum_avg = 0
    count_days = 0
    for row in data:
        try:
            if int(row['time1']) >= start_epoch and int(row['time']) <= end_epoch:
                count_days += 1
                sum_avg += float(row['volumeto']) / float(row['volumefrom'])
        except KeyError:
            print("Error: requested column is missing from dataset")
            sys.exit()
    return round(sum_avg / count_days, 2)


# Replace the body of this main function for your testing purposes
if __name__ == "__main__":
    # Start the program

    # Example variable initialization
    # data is always the cryptocompare_btc.csv read in using a DictReader
    
    data = []
    try:
        with open("cryptocompare_btc.csv", "r") as f:
            reader = csv.DictReader(f)
            data = [r for r in reader]
    except FileNotFoundError:
        print("Error: dataset not found")
    else:
        # print(highest_price(data, "01/01/2016", "31/01/2016"))
        # print(lowest_price(data, "1000", "31/01/2016"))
        # print(max_volume(data, "01/01/2016", "10001"))
        # print(best_avg_price(data, "01/01/2015", "31/01/2015"))
        # print(moving_average(data, "01/01/2015", "01/05/2015"))
        # print(highest_price(data, "01/10/2020", "01/11/2020"))
        # print(lowest_price(data, "28/04/2015", "28/04/2016"))
        # print(max_volume(data, "27/04/2015", "28/04/2016"))
        # print(best_avg_price(data, "18/08/2019", "18/08/2020"))
        # print(moving_average(data, "18/08/2019", "19/08/2020"))
        print(highest_price(data, "01/01/2016", "31/12/2015"))
