import csv
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# #read in the data
# df = pd.read_csv("FailGroups.csv")
#
# # #Line Chart - Average Grade per group
# x = df["Students"]
# y = df["Failed"]
# plt.plot(x,y)
# plt.show()
# #
# # Line Chart - Number of students that fail in a specific range
# x = df["Students"]
# y = df["Average Grade"]
# plt.plot(x,y)
# plt.show()
#
# # Columns
# x = df["Students"]
# y= df["Average Grade"]

# #Bar Chart - Average Grade for students that failed
# plt.xlabel("Students", fontsize=12)
# plt.ylabel("Average Grade", fontsize=10)
# plt.bar(x,y)
# plt.show()

# x = df["Student"]
# y = df["Grade"]

# #Bar Chart grade above 80%
# plt.xlabel("Student Name", fontsize=12)
# plt.ylabel("Grade", fontsize=10)
# plt.bar(x,y)
# plt.show()

#Bar Chart - Average Raw Score
# x = df["Test"]
# y = df["Average RS"]
# plt.xlabel("Test", fontsize=7)
# plt.ylabel("Average RS", fontsize=7)
# plt.bar(x, y)
# plt.show()

#Determining Percentage Change
#Students that passed
# change = (38-10) / 10 * 100
# print(change)

# % that meet district standards
# change = (24-2) / 2 * 100
# print(change)

#Average sub africa score
# change = (0.69 - 0.47) / 0.47 * 100
# print(change)

#Average Raw score
# change = (13.88 - 9.4) / 9.4 * 100
# print(change)

# Decrease in students that scored between 10% - 30%
# change = (0 - 8) / 8 * 200
# print(change)

















# total_grey = data[data.Primary_Fur_Color == "Gray"]
# print(len(total_grey)) = 2473
# data = pandas.read_csv("ss_data.csv")
# race_count = data[data.race == "BLACK"]
# print(len(race_count))

# df = pd.read_csv('ss_data2.csv')
# data_new = df.replace(' ' , str('empty'), regex = True)
# print(data_new)
# for col in df.columns:
#     pct_missing = np.mean(df[col].isnull())
#     print('{} - {}%'.format(col,pct_missing))
#
# # Data Types for our columns
# print(df.dtypes)
#
# df['LONCOD'].astype('int64')


#Let's see if any data is missing (using a for loop)
# for col in df.columns:
#     data_missing = np.where(pandas.isnull(df))
#     print(data_missing)



