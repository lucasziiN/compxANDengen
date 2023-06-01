f = open('myfile.txt', 'r')
total = 0
for data in f:
    data = data.strip("\n")
    print(data)
    total += len(data)
    print(total)
f.close()
