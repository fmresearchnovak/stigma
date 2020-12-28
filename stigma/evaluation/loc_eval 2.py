import matplotlib.pyplot as plt
import sys
import csv


def main():

        # sys.argv[1] should be one of the analytics files from one of the apps
        data = csv.reader(open(sys.argv[1]));
        data = list(data)
        app_lines_before = 0
        app_lines_after = 0
        for row in data:
            app_lines_before += int(row[1])
            app_lines_after += int(row[2])
        

        names = ["before", "after"]
        plt.bar([0, 1], [app_lines_before, app_lines_after], tick_label=names)
        plt.show()
        


        '''
        build_time = []
        train_time = []
        predict_time = []
        mid_stack = []
        for i in range(len(data)):
                build_time.append(data[i][1])
                train_time.append(data[i][2])
                predict_time.append(data[i][3])
                mid_stack.append(data[i][1] + data[i][2])

        #print(data)
        #print(type(data))
        plt.figure(figsize=(8, 3))
        plt.bar( list(range(5, len(build_time)+5)), build_time)
        plt.bar( list(range(5, len(train_time)+5)), train_time, bottom=build_time)
        plt.bar( list(range(5, len(predict_time)+5)), predict_time, bottom=mid_stack)

        




        plt.ylabel("Nanoseconds")
        plt.xlabel("Data Set Size")
        plt.title("Detailed Classifier Computation Time vs Data Set Size")
        plt.legend(["Build", "Train", "Predict"], loc="upper center")

        plt.tight_layout()

        plt.savefig("../../paper_mdm2020/graphics/nb_eval_time_stacked.eps", format="eps", dpi=500)
        print("../../paper_mdm2020/graphics/nb_eval_time_stacked.eps")
        plt.show()

        '''

if __name__ == "__main__":
        main()
