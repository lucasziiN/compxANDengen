import csv
csvfile = open('C:\\Users\\lucas\\Downloads\\yellow_tripdata_2015-06-1%.csv', 'r')
csvreader = csv.DictReader(csvfile)
total_tips = 0.0
line_counter = 0
#if lines % 100000 == 0:
# print("Line", linesm end="\r")
for line in csvreader:
    if line['VendorID'] == '2':
        total_tips += float(line['tip_amount'])
        line_counter += 1
#total_tips = format(total_tips, ".2f")
print('The total tips for VendorID 2 is: $%.2f'% total_tips)
print('Number of lines in this dataset: %d'% line_counter)
csvfile.close()