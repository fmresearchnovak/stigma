
fh = open("SourcesAndSinks.txt", "r")
lines = fh.readlines()
fh.close()

for line in lines:
	line = line.strip("\n")
	parts = line.split(" ")
	
	if(parts[-1] == "_SINK_"):
		print(parts)
		class_name = parts[0][1:] # remove initial < symbol
		class_name = "L" + class_name.replace(".", "/")
		class_name = class_name.replace(":", ";")
		print("\t" + class_name)
		
		#function_name = 
