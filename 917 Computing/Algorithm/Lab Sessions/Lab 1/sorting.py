import timeit

people = []

with open("namePriorities.txt", "r") as f:
    for line in f:
        pair = line.split(',')
        person = pair[0]
        priority = int(pair[1])
        people.append((person, priority))


def bubble_sort(people):
    sorted_people = people.copy()
    for i in range(len(sorted_people) - 1):
        is_sorted = True
        for j in range(len(sorted_people) - i - 1):
            if sorted_people[j][1] > sorted_people[j + 1][1]:
                sorted_people[j], sorted_people[j + 1] = sorted_people[j + 1], sorted_people[j]
                is_sorted = False
        if is_sorted:
            break
    return sorted_people


def merge_helper(nest_1, nest_2):
    merged_nest = []
    index_1 = 0
    index_2 = 0
    while index_1 < len(nest_1) or index_2 < len(nest_2):
        if nest_1[index_1][1] <= nest_2[index_2][1]:
            merged_nest.append(nest_1[index_1])
            index_1 += 1
            if index_1 == len(nest_1):
                merged_nest.extend(nest_2[index_2:])
                break
        else:
            merged_nest.append(nest_2[index_2])
            index_2 += 1
            if index_2 == len(nest_2):
                merged_nest.extend(nest_1[index_1:])
                break
    return merged_nest


def merge_sort_iter(people):
    nested_people = []
    for pair in people:
        nested_people.append([pair])
    while len(nested_people) != 1:
        merged_people = []
        if len(nested_people) % 2 == 0:
            for i in range(0, len(nested_people), 2):
                merged_nest = merge_helper(nested_people[i], nested_people[i + 1])
                merged_people.append(merged_nest)
        else:
            for i in range(0, len(nested_people) - 1, 2):
                merged_nest = merge_helper(nested_people[i], nested_people[i + 1])
                merged_people.append(merged_nest)
            merged_people.append(nested_people[-1])
        nested_people = merged_people
    return nested_people[0]


def merge_sort_recur(people):
    if len(people) == 1:
        return people.copy()
    else:
        nest_1 = merge_sort_recur(people[:len(people) // 2])
        nest_2 = merge_sort_recur(people[len(people) // 2:])
        return merge_helper(nest_1, nest_2)


if __name__ == "__main__":
    time_start = timeit.default_timer()
    bubble_sorted = bubble_sort(people)
    time_end = timeit.default_timer()
    print("Time elapsed for bubble sort is:{}".format(time_end - time_start))
    f = open("bubbleSort.txt", "w")
    for person, priority in bubble_sorted:
        f.write('{},{}\n'.format(person, priority))
    f.close()

    time_start = timeit.default_timer()
    iter_sorted = merge_sort_iter(people)
    time_end = timeit.default_timer()
    print("Time elapsed for iterative merge sort is: {}".format(time_end - time_start))
    f = open("iterativeMerge.txt", "w")
    for person, priority in iter_sorted:
        f.write('{},{}\n'.format(person, priority))
    f.close()

    time_start = timeit.default_timer()
    merge_sorted = merge_sort_recur(people)
    time_end = timeit.default_timer()
    print("Time elapsed for recursive merge sort is: {}".format(time_end - time_start))
    f = open("recursiveMerge.txt", "w")
    for person, priority in merge_sorted:
        f.write('{},{}\n'.format(person, priority))
    f.close()