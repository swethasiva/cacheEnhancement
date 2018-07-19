import sys
cpi_file = open(sys.argv[1])
line = 'not-empty-line'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.switch_cpus.ipc_total')
		except: continue
		committedInsts = float(line.split()[1])
		print "IPC " + str(committedInsts)
except:
	pass
