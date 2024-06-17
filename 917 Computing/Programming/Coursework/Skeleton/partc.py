import csv
import time
import calendar

"""
    Part C
    Please provide definitions for the following functions
"""

# use - sec_per_day to calculate the epoch timestamp of "the day before"
sec_per_day = 24 * 60 * 60


# moving_average(data, start_epoch, end_epoch) -> float
# data: the data from a csv file
# start_date: epoch timestamp
# end_date: epoch timestamp
def moving_average(data, start_epoch, end_epoch):
    sum_avg = 0
    count_days = 0
    for row in data:
        if int(row['time']) >= start_epoch and int(row['time']) <= end_epoch:
            count_days += 1
            sum_avg += float(row['volumeto']) / float(row['volumefrom'])
    return sum_avg / count_days, 2


# moving_avg_short(data, start_date, end_date) -> dict
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def moving_avg_short(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    avg_short_dict = {}
    for epoch in range(start_epoch, end_epoch + sec_per_day, sec_per_day):
        avg_short = moving_average(data, epoch - 2 * sec_per_day, epoch)
        avg_short_dict[epoch] = avg_short
    return avg_short_dict


# moving_avg_long(data, start_date, end_date) -> dict
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def moving_avg_long(data, start_date, end_date):
    start_epoch = calendar.timegm(time.strptime(start_date, "%d/%m/%Y"))
    end_epoch = calendar.timegm(time.strptime(end_date, "%d/%m/%Y"))
    avg_long_dict = {}
    for epoch in range(start_epoch, end_epoch + sec_per_day, sec_per_day):
        avg_long = moving_average(data, epoch - 9 * sec_per_day, epoch)
        avg_long_dict[epoch] = avg_long
    return avg_long_dict


# find_buy_list(short_avg_dict, long_avg_dict) -> dict
# short_avg_dict: dict in (epoch timestamp, float) format
# long_avg_dict: dict in (epoch timestamp, float) format
def find_buy_list(short_avg_dict, long_avg_dict):
    buy_dict = {}
    for epoch in short_avg_dict.keys():
        pre_day = epoch - sec_per_day
        if pre_day not in short_avg_dict.keys():
            continue
        else:
            date = time.strftime("%d/%m/%Y", time.gmtime(epoch))
            if short_avg_dict[pre_day] <= long_avg_dict[pre_day] \
                and short_avg_dict[epoch] > long_avg_dict[epoch]:
                buy_dict[date] = 1
            else:
                buy_dict[date] = 0
    return buy_dict


# find_sell_list(short_avg_dict, long_avg_dict) -> dict
# short_avg_dict: dict in (epoch timestamp, float) format
# long_avg_dict: dict in (epoch timestamp, float) format
def find_sell_list(short_avg_dict, long_avg_dict):
    sell_dict = {}
    for epoch in short_avg_dict.keys():
        pre_day = epoch - sec_per_day
        if pre_day not in short_avg_dict.keys():
            continue
        else:
            date = time.strftime("%d/%m/%Y", time.gmtime(epoch))
            if short_avg_dict[pre_day] >= long_avg_dict[pre_day] \
                and short_avg_dict[epoch] < long_avg_dict[epoch]:
                sell_dict[date] = 1
            else:
                sell_dict[date] = 0
    return sell_dict


# crossover_method(data, start_date, end_date) -> [buy_list, sell_list]
# data: the data from a csv file
# start_date: string in "dd/mm/yyyy" format
# end_date: string in "dd/mm/yyyy" format
def crossover_method(data, start_date, end_date):
    short_avg_dict = moving_avg_short(data, start_date, end_date)
    long_avg_dict = moving_avg_long(data, start_date, end_date)
    buy_dict = find_buy_list(short_avg_dict, long_avg_dict)
    sell_dict = find_sell_list(short_avg_dict, long_avg_dict)
    buy_list = []
    sell_list = []
    for date in buy_dict.keys():
        if buy_dict[date] == 1:
            buy_list.append(date)
        if sell_dict[date] == 1:
            sell_list.append(date)
    return buy_list, sell_list


# Replace the body of this main function for your testing purposes
if __name__ == "__main__":
    # Start the program

    # Example variable initialization
    # data is always the cryptocompare_btc.csv read in using a DictReader
    
    data = []
    with open("cryptocompare_btc.csv", "r") as f:
        reader = csv.DictReader(f)
        data = [r for r in reader]
    
    tests = [
        ("01/05/2017", "12/06/2017"),
        ("05/09/2018", "27/09/2018"),
        ("03/11/2019", "14/11/2019")
    ]
    print("Start Date\tEnd Date\tBuy List\tSell List")
    for start_date, end_date in tests:
        buy_list, sell_list = crossover_method(data, start_date, end_date)
        print("{}\t{}\t{}\t{}".format(start_date, end_date, buy_list, sell_list))