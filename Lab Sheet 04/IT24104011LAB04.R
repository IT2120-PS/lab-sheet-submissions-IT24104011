setwd("C:\\Users\\IT24104011\\Downloads")
#Part 01
#setting Directory

#Importing the data set 
data<-read.table("DATA 4.txt",header =TRUE,sep =" ")

#view the file in a seperate window
fix(data)

## Attach the file into R. So,you can call the variables by their names
attach(data)




setwd("C:\\Users\\IT24104011\\Desktop\\IT24104011")

branch_data<-read.table("Exercise.txt", header = TRUE, sep = ",")

#2)
str(branch_data)
summary(branch_data$Sales_X1)

#3)
boxplot(branch_data$Sales_X1, main = "Boxplot for Sales", ylab = "Sales")



#4)
quantile(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#5)
get.outliers<-function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  
  outliers<-z[z<lb | z>ub]
  
  return(outliers)
}

get.outliers(branch_data$Years_X3)
