import sys
file = open(sys.argv[1])
file.next()
for line in file:
	try:
		line = line.rstrip('\n')
		line = line.upper()
		splits = line.split(" ")	
		print str(splits[2]) + "," + str(splits[3])
	except:
		pass
