import sys
cpi_file = open(sys.argv[1])
line = 'not-empty-line'
array = {}
count = 0
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.l2.overall_hits::total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
		print "Hit Count : " + str(float(line.split()[1]))
except:
	pass
cpi_file.seek(0)

line = 'temp'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.l2.overall_misses::total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
		print "Miss Count : " + str(float(line.split()[1]))
except:
	pass
cpi_file.seek(0)

line = 'temp'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.l2.overall_miss_latency::total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
		print "Miss Latency : " + str(float(line.split()[1]))
except:
	pass
