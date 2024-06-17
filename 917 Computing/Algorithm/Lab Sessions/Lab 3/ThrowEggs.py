def min_drops_worst_case(n, k):
    min_drops = [[0] * (n + 1) for i in range(k + 1)]
    for i in range(1, k + 1):
        min_drops[i][1] = i
    for j in range(1, n + 1):
        min_drops[1][j] = 1
    for i in range(2, k + 1):
        for j in range(2, n + 1):
            min_drop = k
            min_split = -1
            for s in range(1, i + 1):
                drop = max(min_drops[i-s][j], min_drops[s-1][j-1]) + 1
                if drop < min_drop:
                    min_drop = drop
                    min_split = s
            min_drops[i][j] = min_drop
    return min_drops[k][n]

def min_drops_worst_case_2(n, k):
    max_cover = [[0] * (n + 1) for i in range(k + 1)]
    times = 0
    while max_cover[times][n] < k:
        times += 1
        for egg in range(1, n + 1):
            max_cover[times][egg] = max_cover[times-1][egg-1] + max_cover[times-1][egg] + 1
    return times

print(min_drops_worst_case_2(2, 100))

