import csv
csvfile = open("C:\\Users\\lucas\\Downloads\\steel.csv")
csvreader = csv.DictReader(csvfile)
tensile_differences = []
sum = 0
print("%7s %8s %8s"%("Grade", "Low MPa", "Max MPa"))
for gradeInfo in csvreader:
    #print("%7s %8s %8s"%(gradeInfo["grade"], gradeInfo["low"], gradeInfo["high"]))
    low = int(gradeInfo["low"])
    high = int(gradeInfo["high"])
    difference = low - high
    tensile_differences.append(difference)
    print("The difference between the low and high tensile strength of grade %s is %s" % (gradeInfo["grade"], tensile_differences[len(tensile_differences) - 1]))
    sum = sum + tensile_differences[len(tensile_differences)-1]
    mean = sum / len(tensile_differences)
formatted_mean = format(mean, ".1f")
print("The mean is %s"% (formatted_mean))