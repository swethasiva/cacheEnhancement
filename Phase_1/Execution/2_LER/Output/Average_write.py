import sys
file = open(sys.argv[1])
writeCount = 0
for line in file:
	try:
		line = line.rstrip('\n')
		splits = line.split(",")	
		writeCount = writeCount + int(splits[1])
	except:
		pass
print "Total Write : " + str(writeCount) 
