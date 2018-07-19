import sys
file = open(sys.argv[1])
file.next()
writeCount = 0
for line in file:
	try:
		line = line.rstrip('\n')
		line = line.upper()
		splits = line.split(" ")	
		writeCount = writeCount + int(splits[7])
	except:
		pass
print "Total Write : " + str(writeCount) 
