mat=matrix(c(1,2,3,4),2,2,TRUE)
mat2=matrix(c(2,3,4,5),2,2,TRUE)

print("the entered matrix mat is")
print(mat)

print("the entered matrix mat2 is")
print(mat2)


mat_add<-function(mat,mat2){
  print("the sum of two matrix is")
  print(mat+mat2)
}
mat_add(mat,mat2)

mat_sub<-function(mat,mat2){
  print("the diffrenece of two matrix is")
  print(mat-mat2)
}
mat_sub(mat,mat2)

mat_mul<-function(mat,mat2){
  print("the product of two matrix is")
  print(mat%*%mat2)
}
mat_mul(mat,mat2)

mat_div<-function(mat,mat2){
  print("the quoitient of two matrix is")
  print(mat%/%mat2)
}
mat_div(mat,mat2)

mat_rctsum<-function(mat){
  meanval=mean(mat)
  print("the mean of matrix is")
  print(meanval)
  
  row_sum=rowSums(mat)
  print("the row sum of matrix is")
  print(row_sum)
  
  coloumsum=colSums(mat)
  print("the coloum sum of matrix is")
  print(coloumsum)
  
  total=sum(mat)
  print("the total sum of matrix is")
  print(total)
  
}
mat_rctsum(mat)

mat_sort<-function(mat) {
  print("The matrix in ascending order is")
  print(sort(mat))
  
  print("The matrix in decending order is")
  print(sort(mat,TRUE))
  
}
mat_sort(mat)

mat_rev<-function(mat) {
  print("Matrix in reverse order is")
  print(rev(mat))
}

mat_rev(mat)

mat_trans<-function(mat) {
  print("Transpose matrix is")
  print(t(mat))
}
mat_trans(mat)


