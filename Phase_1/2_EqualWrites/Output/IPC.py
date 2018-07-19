import sys
cpi_file = open(sys.argv[1])
line = 'not-empty-line'
array = {}
count = 0
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.switch_cpus0.ipc_total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
except:
	pass
cpi_file.seek(0)

line = 'temp'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.switch_cpus1.ipc_total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
except:
	pass
cpi_file.seek(0)

line = 'temp'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.switch_cpus2.ipc_total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
except:
	pass
cpi_file.seek(0)

line = 'temp'
try:
	while len(line) > 0:
		line = cpi_file.readline()
		try: line.index('system.switch_cpus3.ipc_total')
		except: continue
		array[count] = float(line.split()[1])
		count = count + 1
except:
	pass

print "IPC 0 : " + str(float(array[0] + array[4] + array[8] + array[12]))
print "IPC 1 : " + str(float(array[1] + array[5] + array[9] + array[13]))
print "IPC 2 : " + str(float(array[2] + array[6] + array[10] + array[14]))
print "IPC 3 : " + str(float(array[3] + array[7] + array[11] + array[15]))
