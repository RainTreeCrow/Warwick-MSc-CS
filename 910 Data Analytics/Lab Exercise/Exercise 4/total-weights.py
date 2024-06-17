import os, sys, math

file = sys.argv[1]
inp = file

def clean_spaces(string):
    while "  " in string:
        string = string.replace("  "," ")
    return string

def get_weights_list(file):
    inp = open(file)
    weights = False
    weights_list = []
    error = 0
    list = []
    for line in inp:
        if line.startswith("Number of kernel evaluations: "):
            weights = False
        elif weights == True and line.strip() != "":
            line = line.replace("+","").replace("*","")
            line = line.replace("(normalized)","").strip()
            line = clean_spaces(line)
            list.append(line)
        elif line.startswith("Machine linear: showing attribute weights"):
            weights = True
    inp.close()
    return list

def get_abs_weight(llist):
    total_weight = 0.0
    out_list = {}
    for line in llist:
        lineLst = line.split(" ")
        weight, feature = lineLst
        feature = feature.split('=')[0]
        abs_weight = math.fabs(float(weight))
        total_weight += abs_weight
        if feature in out_list.keys():
            weight = out_list[feature]
            out_list[feature] = weight + abs_weight
        else:
            out_list[feature] = abs_weight
    return out_list,total_weight

def write_output(llist,remainder,file,total_weight):
    out = open(file + ".totalweights","w")
    out.write("#Total weight: %s, Remainder: %s\n" % (total_weight,remainder))
    out.write("#Rank\tAbs_Weight\tFeature\n")
    i = 1
    for feature in llist.keys():
        abs_weight = llist[feature]
        out.write("%s\t%s\t\t%s\n" % (i,abs_weight,feature))
        i += 1
    out.close()

weight_list = get_weights_list(file)
remainder = weight_list.pop(-1)
remainder = remainder.replace("-","").strip()
abs_weight_list,total_weight = get_abs_weight(weight_list)
write_output(abs_weight_list,remainder,file,total_weight)