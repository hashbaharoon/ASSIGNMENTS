
#-- 1Q ANSWER

s<-seq(1,50,3)
s
s1<-seq(1,50,5)
s1
s2<-seq(1,50,10)
s2


#-- 2Q ANSWER

The different data objects in R are:-
  1)Vectors
  2)Matrix
  3)Arrays
  4)List
  5)Data Frames
  6)Factors

## 1)Vectors :
## Syntax --- Combination of values c()
v<- c(4,6,0,19)
v

## 2)Matrix :
## Syntax --- matrix(data, nrow, ncol, byrow, dimnames)
# data = vector data which is input values for matrix
# nrow = how many rows need to be created
# ncol = how many columns need to be created
# byrow = it takes a logical input , if byrow is TRUE then data will arrange in row wise
# dimnames = names we can assign to rows and columns
a<- matrix(c(1,2,4,6,9,3),nrow = 2,ncol = 3,byrow = TRUE,dimnames = list(c('r1','r2'),
                                                                    c('c1','c2','c3')))
a

## 3)ArrayS           
# syntax = arr = array(data , dim )
# data = input data
# dim = how many dimentions we need 
ar<- array(c(1:9),dim=c(3,2,2))
ar

## 4)List
# syntax --- list(component1,component2..)
List<- list(ID= c(1,2,3,4),Name=c('Raj','Ashi','Jack'), Course=c('Data Analytics','SQL','C++'))          
List

## 5)Data Frame
# syntax ---  data.frame()
DF<- data.frame(ID= c(1,2,3,4),Name=c('Raj','Ashi','Jack','Das'), Course=c('Data Analytics','SQL','C++','Java'))
DF

## 6)Factors
# syntax --- factor()
h <-c('male','female','male','female','male','male')
F <-factor(h)
F


#-- 3Q ANSWER

df<-data.frame(RollNo. = c(1:5), Name=c('Tazvi','Yemen','Raj','Jacob','Manohar') , Marks= c(69,53,rep(80,2),65))
df

#delete row
df1<-df[-c(2),]
df1

#delete column
df2<-df[-c(1)]
df2

#Adding new row
x<- c(6,"Kevin",58)
df3<-rbind(df,x)
df3

#Adding new column
Grade<-c("B","C","A","A","B")
Grade

DF<-cbind(df,Grade)
DF


#-- 4Q ANSWER

x<-10
if(x==0){
  print("Zero")
}else if(x>0){
  print('Positive Number')
}else print('Negative Number')


#-- 5Q ANSWER

my_func<-function(x){
  return(class(x))  
}

my_func(1)
my_func('hash')


#-- 6Q ANSWER

# break Statement - terminates the loop statement and transfers execution to the statement 
# immediately following the loop

# next Statement - useful when we want to skip the current iteration of a loop without terminating it

v <- letters[1:5]
cnt <- 1

repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

z <- 1:20
for ( i in z) {
  
  if (i %% 3 == 0) {
    next
  }
  print(i)
}


#-- 7Q ANSWER

x= c(1,5.6,3,10,3.5,5)
rv=rev(x)
print(rv)


#-- 8Q ANSWER

v <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
mode <- function(v){
uniqv = unique(v)
uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Calling Function 
mode(v)


#-- 9Q ANSWER

library(dplyr)
filter(iris, Species =="setosa")


#--10Q ANSWER

Means_of_obs <-apply(iris[,1:4],1,mean)
Result<-cbind(iris,Means_of_obs)
Result


#--11Q ANSWER

filter(select(iris,Sepal.Length,Sepal.Width,Species),Species == "versicolor")


#--12Q ANSWER


# Creating scatter plot for automatic cars denoting different cylinders.
ggplot(data = subset(mtcars,am == 0),aes(x = mpg,y = disp,colour = factor(cyl)))+ geom_point(size = 2.5)
#From the graph it is clear that displacement corresponding to mileage of automatic cars for different cylinders is decreasing.

#creating different boxplots for 'disp' for different levels of x we can define aes(x = cyl, y = disp)
mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars, aes(x=cyl, y=disp)) + geom_boxplot(fill="orange", bins =30)  
#From  boxplot can see one outlier for 6 cylinders.The displacement is much higher for automobiles having 6 cylinders.

# Creating a histogram-
ggplot(data  = mtcars, aes( x = mpg)) + geom_histogram(color="black", fill="blue",size=.5 ,bins =30)  
#From the graph it is clear that most automobiles have a mileage of 15.But the distribution in non normal.The distribution is  right skewed.


#Creating a Bar graph for number of cars in each class -
p = ggplot(mpg, aes(x= class)) + geom_bar(fill="green",color="black",size=1)
p + labs(title = "Number of Cars in each type", x = "Type of car", y = "Number of cars")
#From the graph it is clear that sports utility vehicle(SUV) is the most used automobile.


#Creating a Line graph for number of cars in each class-
ggplot(data  = mtcars, aes( x = mpg,y=hp)) + geom_line(color="red",size=1)
#From the graph it is clear that as mpg increases there is a decrease in horsepower.



