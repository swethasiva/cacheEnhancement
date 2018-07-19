import sys
#import pdb
from itertools import izip
file1 = open(sys.argv[1])
file2 = open(sys.argv[2])

max1 = 0
max2 = 0
count = 0

for line1, line2 in izip(file1, file2):
	try:
		#pdb.set_trace()
		line1 = line1.rstrip('\n')
		line2 = line2.rstrip('\n')
		splits1 = line1.split(",")	
		splits2 = line2.split(",")	
		if max1 < int(splits1[1]):
			max1 = int(splits1[1])
		if max2 < int(splits2[1]):
			max2 = int(splits2[1])
		count = count + 1
		if int(count)%16 == 0:
			number = float(max1)/max2
			print str(number)
			max1 = 0
			max2 = 0
	except:
		pass
