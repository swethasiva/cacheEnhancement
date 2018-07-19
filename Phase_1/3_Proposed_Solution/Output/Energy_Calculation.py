import sys
file = open(sys.argv[1])
file.next()
toal_energy = 0
write_count = 0
read_count = 0
for line in file:
	try:
		line = line.rstrip('\n')
		line = line.upper()
		splits = line.split(" ")	
		write_count = write_count + int(splits[6])
		read_count = read_count + (int(splits[7]) * 512)
	except:
		pass

# Energy Consumption = Nread * Eread + Nwrite * Ewrite
# Eread = 0.205nJ, Ewrite = 1.620nJ

# MP1k = 1000 * Miss Rate * (Memory Accesses/Instruction Count)

total_energy = (read_count * 0.000000000205) + (write_count * 0.000000001620)
print "Total Energy : " + str(total_energy) 
