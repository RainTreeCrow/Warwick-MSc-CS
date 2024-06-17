import math

# represet time units using microseconds
second = 1000000
minute = 60 * second
hour = 60 * minute
day = 24 * hour
time_t = {'second': second, 'minute': minute, 'hour': hour, 'day': day}

def n_log2_n(time):
    n = int(math.sqrt(time))
    while n * math.log2(n) < time:
        n += 1
    return n - 1

def n_square(time):
    n = int(math.sqrt(time))
    if math.pow(n + 1, 2) > time:
        return n
    else:
        return n + 1

def n_cube(time):
    n = int(math.pow(time, 1/3))
    if math.pow(n + 1, 3) > time:
        return n
    else:
        return n + 1

def exp_2_n(time):
    n = int(math.log2(time))
    if math.pow(2, n + 1) > time:
        return n
    else:
        return n + 1

def fact_n(time):
    n = 1
    fact = 1
    while fact < time:
        n += 1
        fact *= n
    return n - 1

for key in time_t.keys():
    time = time_t[key]
    print("n for nlog_2n in 1 {} is {}".format(key, n_log2_n(time)))
    print("n for n^2 in 1 {} is {}".format(key, n_square(time)))
    print("n for n^3 in 1 {} is {}".format(key, n_cube(time)))
    print("n for 2^n in 1 {} is {}".format(key, exp_2_n(time)))
    print("n for n! in 1 {} is {}".format(key, fact_n(time)))