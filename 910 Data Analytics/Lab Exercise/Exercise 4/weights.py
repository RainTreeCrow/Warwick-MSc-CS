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

def get_abs_weight(list):
	total_weight = 0.0
	out_list = []
	for line in list:
		lineLst = line.split(" ")
		weight,feature = lineLst
		abs_weight = math.fabs(float(weight))
		total_weight += abs_weight
		out_list.append([feature,weight,abs_weight])
	return out_list,total_weight

def get_sign(num):
	num = float(num)
	if num > 0:
		s = "+"
	elif num < 0:
		s = "-"
	else:
		s = "0"
	return s

def write_output(list,remainder,file,total_weight):
	out = open(file + ".weights","w")
	# out.write("#Feature\tWeight\tAbs(Weight)\n")
	out.write("#Total weight: %s, Remainder: %s\n" % (total_weight,remainder))
	out.write("#Rank\tSign\tAbs_Weight\tFeature\n")
	i = 1
	for weight_feat in list:
		feature,weight,abs_weight = weight_feat
		sign = get_sign(weight)
		out.write("%s\t%s\t%s\t%s\n" % (i,sign,abs_weight,feature))
		i += 1
	out.close()

weight_list = get_weights_list(file)
remainder = weight_list.pop(-1)
remainder = remainder.replace("-","").strip()
abs_weight_list,total_weight = get_abs_weight(weight_list)
abs_weight_list.sort(key=lambda k: (k[-1]), reverse=True)
write_output(abs_weight_list,remainder,file,total_weight)