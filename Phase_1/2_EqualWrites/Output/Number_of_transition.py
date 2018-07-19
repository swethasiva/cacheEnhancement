import sys
file = open(sys.argv[1])
file.next()
trans01 = 0
trans10 = 0
for line in file:
	try:
		line = line.rstrip('\n')
		line = line.upper()
		splits = line.split(" ")	
		trans01 = trans01 + int(splits[4])
		trans10 = trans10 + int(splits[5])
		print str(splits[2]) + "," + str(splits[4]) + "," + str(splits[5])
	except:
		pass
print "Total 0 to 1 Transitions : " + str(trans01) 
print "Total 1 to 0 Transitions : " + str(trans10)
