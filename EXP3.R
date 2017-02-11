# define the dataframe
df=data.frame(bookid=c(123L,124L,125L),bookname=c('crush to crushed','historical breakup 12-12-12','i too had a love story'),author=c('MP','MP','Ravinder Singh'),year=c(2012L,2013L,2010L),price=c(150.00,150.00,100.00),copies=c(10000L,1200L,15L))

#print the structure of data frame using str()
print("The structure of the data frame is")
print(str(df))

#print the details of book whose id is entered using subset()
print("enter the book id whose details need to be displayed")
id=scan(what=integer(),nlines=1,quiet=TRUE)
print(subset(df,bookid==id))

#print the details of book which has maximum price using subset() and max()
print("Details of book with maximum price")
print(subset(df,price==max(df$price)))

#print the details of book whose year is entered using subset()
print("Enter the year of publication")
year1=scan(what=integer(),nlines=1,quiet=TRUE)
print(subset(df,year==year1))

#print the details of book which has maximum copies using subset() and max()
print("book details with maximum number of copies")
print(subset(df,copies==max(df$copies)))
