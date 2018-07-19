import sys
file = open(sys.argv[1])
file.next()
count = 0
writes = 0
for line in file:
	try:
		line = line.rstrip('\n')
		line = line.upper()
		splits = line.split(" ")	
		count = count + 1
		writes = writes + int(splits[3])
		if count == 16:
			print str(splits[2]) + "," + str(writes)
			count = 0
			writes = 0
	except:
		pass
