evenodd<-function(x){
  if(x%%2==0){
    paste(x," is even number")
  } else {
    paste(x," is odd number")
  }
    
}

print("Enter the number to check for even odd")
a=scan(what=integer(),nlines=1,quiet=TRUE)
evenodd(a)

vectordisplayasc<-function(ve){
  print("the vector in ascending is")
  print(sort(ve))
  
}

vectordisplaydec<-function(ve){
  print("the vector in decending is")
  print(sort(ve,decreasing = TRUE))
}
vectordisplayasc(c())
vectordisplaydec(c())

print("Enter 5 numbers")
ve=scan(what=integer(),nlines=5,quiet=TRUE)
vectordisplayasc(ve)
vectordisplaydec(ve)

squarenum<-function(m,n){
  for (i in m:n){
    print(i^2)
  }
}
print("enter m and n values")
num1=scan(what=integer(),nlines=1,quiet=TRUE)
num2=scan(what=integer(),nlines=1,quiet=TRUE)
squarenum(num1,num2)

displaylist<-function(l){
  print(l)
}

list1=list(10L,"MP",10.2,c(1,2,3))
displaylist(list1)