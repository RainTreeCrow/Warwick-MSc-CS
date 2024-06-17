# import matplotlib.pyplot as plt
import csv
import time
import calendar
import sys

"""
    Part D
    Please provide definitions for the following class and functions
"""

sec_per_day = 24 * 60 * 60

class DateOORError(Exception):
    def __str__(self):
        return "date value is out of range"

class EndStartError(Exception):
    def __str__(self):
        return "end date must be larger than start date"

# Class Investment:
# Instance variables
#	start date
#	end date
#	data 
# Functions
#	highest_price(data, start_date, end_date) -> float
#	lowest_price(data, start_date, end_date) -> float
#	max_volume(data, start_date, end_date) -> float
#	best_avg_price(data, start_date, end_date) -> float
#	moving_average(data, start_date, end_date) -> float
class Investment:
    def __init__(self, data, start_date, end_date):
        self.data = data
        self.start_date = start_date
        self.end_date = end_date

    def get_epoch(self, data=[], start_date="", end_date=""):
        if data == []:
            data = self.data
        if start_date == "":
            start_date = self.start_date
        if end_date == "":
            end_date = self.end_date
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

    def highest_price(self, data=[], start_date="", end_date=""):
        if data == []:
            data = self.data
        if start_date == "":
            start_date = self.start_date
        if end_date == "":
            end_date = self.end_date
        start_epoch, end_epoch = self.get_epoch(data, start_date, end_date)
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

    def lowest_price(self, data=[], start_date="", end_date=""):
        if data == []:
            data = self.data
        if start_date == "":
            start_date = self.start_date
        if end_date == "":
            end_date = self.end_date
        start_epoch, end_epoch = self.get_epoch(data, start_date, end_date)
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

    def max_volume(self, data=[], start_date="", end_date=""):
        if data == []:
            data = self.data
        if start_date == "":
            start_date = self.start_date
        if end_date == "":
            end_date = self.end_date
        start_epoch, end_epoch = self.get_epoch(data, start_date, end_date)
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

    def best_avg_price(self, data=[], start_date="", end_date=""):
        if data == []:
            data = self.data
        if start_date == "":
            start_date = self.start_date
        if end_date == "":
            end_date = self.end_date
        start_epoch, end_epoch = self.get_epoch(data, start_date, end_date)
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

    def moving_average(self, data=[], start_date="", end_date=""):
        if data == []:
            data = self.data
        if start_date == "":
            start_date = self.start_date
        if end_date == "":
            end_date = self.end_date
        start_epoch, end_epoch = self.get_epoch(data, start_date, end_date)
        sum_avg = 0
        count_days = 0
        for row in data:
            try:
                if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                    count_days += 1
                    sum_avg += float(row['volumeto']) / float(row['volumefrom'])
            except KeyError:
                print("Error: requested column is missing from dataset")
                sys.exit()
        return round(sum_avg / count_days, 2)

    def get_high_list(self, start_epoch, end_epoch):
        high = []
        for row in data:
            try:
                if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                    high.append(float(row['high']))
            except KeyError:
                print("Error: requested column is missing from dataset")
                sys.exit()
        return high

    def get_low_list(self, start_epoch, end_epoch):
        low = []
        for row in data:
            try:
                if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                    low.append(float(row['low']))
            except KeyError:
                print("Error: requested column is missing from dataset")
                sys.exit()
        return low

    def get_avg_list(self, start_epoch, end_epoch):
        avg = []
        for row in data:
            try:
                if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
                    avg.append(float(row['volumeto']) / float(row['volumefrom']))
            except KeyError:
                print("Error: requested column is missing from dataset")
                sys.exit()
        return avg

# linear_regression(list, list) -> int, int
# x_list: x1, x2, ..., xn
# y_list: y1, y2, ..., yn
def linear_regression(x_list, y_list):
    x_mean = sum(x_list) / len(x_list)
    y_mean = sum(y_list) / len(y_list)
    m = sum([(x_list[i] - x_mean) * (y_list[i] - y_mean) for i in range(len(x_list))]) \
        / sum([pow(x - x_mean, 2) for x in x_list])
    b = y_mean - m * x_mean
    return m, b

# predict_next_average(investment) -> float
# investment: Investment type
def	predict_next_average(investment):
    start_epoch, end_epoch = investment.get_epoch()
    x_list = range(start_epoch, end_epoch + sec_per_day, sec_per_day)
    y_list = investment.get_avg_list(start_epoch, end_epoch)
    m, b = linear_regression(x_list, y_list)
    return m * (end_epoch + sec_per_day) + b


# classify_trend(investment) -> str
# investment: Investment type
def classify_trend(investment):
    start_epoch, end_epoch = investment.get_epoch()
    x_list = range(start_epoch, end_epoch + sec_per_day, sec_per_day)
    y_high = investment.get_high_list(start_epoch, end_epoch)
    y_low = investment.get_low_list(start_epoch, end_epoch)
    m_high, b_high = linear_regression(x_list, y_high)
    m_low, b_low = linear_regression(x_list, y_low)
    if m_high > 0 and m_low < 0:
        return "volatile"
    elif m_high > 0 and m_low > 0:
        return "increasing"
    elif m_high < 0 and m_low < 0:
        return "decreasing"
    else:
        return "other"    


# Replace the body of this main function for your testing purposes
if __name__ == "__main__":
    # Start the program
    data = []
    with open("cryptocompare_btc.csv", "r") as f:
        reader = csv.DictReader(f)
        data = [r for r in reader]
    
    investment = Investment(data, "28/04/2015", "18/10/2020")
    tests = [
        ("04/05/2015", "27/05/2015"),
        ("01/02/2016", "28/02/2016"),
        ("08/12/2016", "11/12/2016"),
    ]
    print("Start Date\tEnd Date\tPredict Next Average\tClassify Trend")
    for start_date, end_date in tests:
        investment = Investment(data, start_date, end_date)
        print("{}\t{}\t{}\t{}".format(start_date, end_date, \
            predict_next_average(investment), classify_trend(investment)))