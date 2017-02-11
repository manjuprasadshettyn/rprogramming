#read the .csv file using read.csv()
df=read.csv("C:\\Users\\test\\Documents\\MP-R\\emp.csv")

#print the structure of data frame using str()
print("The structure of the data frame is")
print(str(df))

#print the maximum salary
print("the maximun salary is")
print(max(df$salary))

#print the details of employee which has maximum salary using subset() and max()
print("Details of emplyoee with maximum salary")
print(subset(df,salary==max(df$salary)))

#print the details of employee in IT department whose salary is greater than 600
print("Details of emplyoee in IT department whose salary is greater than 600")
print(subset(df,dept=="IT" & salary>600))

#print the details of employee who joined on or after 2014
print("Details of emplyoee who joineed on or after 2014")
print(subset(df,yearofjoining >=2014 ))