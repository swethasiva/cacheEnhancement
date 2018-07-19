import sys
cpi_file = open(sys.argv[1])
line = 'not-empty-line'
array = {}
count = 0
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('sim_seconds')
		except: continue
		print "Simulation Time : " + str(float(line.split()[1]))
except:
	pass
