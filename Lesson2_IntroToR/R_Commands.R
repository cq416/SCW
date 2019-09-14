#My first R command
print("Good Morning")
#variable
name<-"jane"
price <- 4
print(price)
ls()
rm(price)
ls()
a <- 12
print(a)
mass<-47.5
age<-122
mass<-mass*2.3
age<-age-20
height<-1
height<-height+20
print(height)
mass<-64
getwd()
help("getwd")
#install a package
install.packages("knitr")
library(knitr)
score <- 79L
typeof(score)
?complex
v<-c(4,5,6)
head(v,n=1)
#manipulate the vector
v <- C(v,56)
str(v)
m<-matrix(c(1:18),3,6)
m
dim(m)
cont<-factor(c("asia","europe","america","Africa","ocenia"))
str(cont)
menuitems<-c("chicken","soup","salad","tea")
menutypes<-factor(c("solid","liquid","solid","liquid"))
menucost<-c(5.34,567,34,2.8)
myorder<-list(menuitems,menutypes,menucost)
print(myorder)
myorder_df<-data.frame(menutypes,menuitems,menucost)
print(myorder_df)
x<-myorder_df$menuitems
df1<-myorder_df[myorder_df$menutypes=="Solid",]
df1

data <- read.table("gapminder.txt",header = TRUE)
head(data)
str(data)
typeof(data)
x1<-data[,c(3,5)]
head(x1)
data[data$country=="Sweden",]
unique(data[,1])

x2<-data[data$lifeExp<70,]
head(x2)
