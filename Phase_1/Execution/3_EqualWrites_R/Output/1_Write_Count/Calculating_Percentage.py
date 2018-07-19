import sys
file = open(sys.argv[1])
write = []
count = 0
number = 1
for line in file:
	try:
		line = line.rstrip('\n')
		splits = line.split(",")	
		write.insert(count,int(splits[1]))
		count = count + 1
		if int(count)%16 == 0:
			maximum = max(write)
			while write[0] is not tuple:
				print str(number) + "," + str((float(write[0])/maximum)*100)
				number = number + 1
				write.pop(0)
	except:
		pass
