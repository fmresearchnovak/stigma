import matplotlib.pyplot as plt
import csv
import os







def main():

	csvfile = open("./cpu_overhead_data.csv")
	reader = csv.reader(csvfile)

	# skips the first line (header)
	next(reader)


	count = 0
	x = []
	y = []
	for row in reader:
		x.append(int(row[0]))
		y.append(int(row[1]))
		count += 1
		if(count > 150):
			break


	plt.plot(x, y);


	plt.xlabel("Lines of smali code");
	plt.ylabel("Time (ms)")
	plt.title("Lines of smali code vs. time to compute")

	plt.axvline(6000000, linestyle = ':', color = "gray")
	plt.text(6100000, 950, "Maximum number of lines\nin an entire app")

	plt.grid(axis = "y")


	path = "./cpu_overhead_eval.eps"
	plt.savefig(path, format = "eps", dpi = 500)
	print("output: " + str(os.path.abspath(path)))
	print("Showing Graph Now...")
	plt.show()





if __name__ == "__main__":
	main()