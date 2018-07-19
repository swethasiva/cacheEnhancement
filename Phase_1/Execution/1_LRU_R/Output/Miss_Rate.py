import sys
cpi_file = open(sys.argv[1])
line = 'not-empty-line'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.l2.overall_miss_rate::total')
		except: continue
		committedInsts = float(line.split()[1])
		print  "L2 Miss Rate " + str(committedInsts)
except:
	pass
