#import sys
#sys.path.append('/home/engen103/lib/')
#import progress
import csv
import matplotlib.pyplot as plot

#progressCounter = progress.Progress()
def is_in_range(latitude, longitude):
   range = 40.50 < latitude < 41.00 and -74.09 < longitude < -73.75
   return range


csvfile = open('C:\\Users\\lucas\\Downloads\\yellow_tripdata_2015-06-1%.csv', 'r')
csvreader = csv.DictReader(csvfile)

pickUpLatitudeList = []
pickUpLongitudeList = []
dropOffLatitudeList = []
dropOffLongitudeList = []


for row in csvreader:
    pickUpLatitude = float((row['pickup_latitude']))
    pickUpLongitude = (float(row['pickup_longitude']))
    dropOffLatitude = (float(row['dropoff_latitude']))
    dropOffLongitude = (float(row['dropoff_longitude']))

    if is_in_range(pickUpLatitude, pickUpLongitude):
        pickUpLatitudeList.append(pickUpLatitude)
        pickUpLongitudeList.append(pickUpLongitude)

    if is_in_range(dropOffLatitude, dropOffLongitude):
        dropOffLatitudeList.append(dropOffLatitude)
        dropOffLongitudeList.append(dropOffLongitude)
    
print('The length of the pick up latitude list is: %d\nThe first three values for this list are: %f %f %f' % (len(pickUpLatitudeList), pickUpLatitudeList[0], pickUpLatitudeList[1], pickUpLatitudeList[2]))
print('The length of the pick up longitude list is: %d\nThe first three values for this list are: %f %f %f' % (len(pickUpLongitudeList), pickUpLongitudeList[0], pickUpLongitudeList[1], pickUpLongitudeList[2]))
print('The latitude of the first three drop off points are: %f %f %f' % (dropOffLatitudeList[0], dropOffLatitudeList[1], dropOffLatitudeList[2]))
print('The longitude of the first three drop off points are: %f %f %f' % (dropOffLongitudeList[0], dropOffLongitudeList[1], dropOffLongitudeList[2]))


plot.hexbin(pickUpLatitudeList, pickUpLongitudeList, bins='log', gridsize=1000)
plot.xlabel('Longitude')
plot.ylabel('Latitude')
plot.show()
plot.savefig('taxi-hm-150601.pdf')
csvfile.close()
