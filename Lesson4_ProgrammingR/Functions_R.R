gapminder <- read.table("gapminder.txt",header = TRUE)

FtoC <- function(temp){
  Cel <- (temp -32) * 5/9
  return(Cel)
}

CtoK<-function(temp_C){
  Kel <- (temp_C + 273.15)
  return(Kel)
}

FtoK <-function(temp_F){
  Cel <-FtoC(temp_F)
  Kel<- CtoK(Cel)
  return(Kel)
}

MeanlifeExp<-function(Continent){
  subset_continent_gapminder<-gapminder[gapminder$continent == Continent,"lifeExp"]
  mean_life_exp <-mean(subset_continent_gapminder)
  return(mean_life_exp)
}



#if (condtion is true){
#  do this
#} else if (second condition is true){
#  do this
#} else (second condition){
#}



x<-MeanlifeExp("Asia")
if(x>=50){
  print ( "Life Expectancy of Asia is greater than or equal to 50")
}else {
  print("Life Expectancy of Asia is lower than 50")
}
##############################################################
#for(iterator in a set of values){
#  do an action
#}

for (i in 1:10){
  print(i)
}

menuItems<-c("chicken","soup","salad","tea")
menuType<-factor(c("solid","liquid","solid","liquid"))
menuCost<-c(4.99,3.99,2.99,5.99)
myorder_df<-data.frame(menuType,menuItems,menuCost)

for (items in myorder_df$menuItems){
  myorder_df_subset<-myorder_df[myorder_df$menuItems==items,]
  print(items)
  print(myorder_df_subset$menuCost)
}

#########################################################
Continent<-c("Asia","Europe","Oceania","Americas","Africa")
for (x in Continent){
  print(x)
  y<-MeanlifeExp(x)
  if(y>=50){
    print ("Life Expectancy is greater than or equal to 50")
  }else {
    print("Life Expectancy is lower than 50")
  }
}
#########################################################
Continent_gm<-unique(gapminder$continent)
print(Continent_gm)
for (x in Continent){
  y<-MeanlifeExp(x)
  if(y>=50){
    print (paste0("Life Expectancy ", x, " is greater than or equal to 50"))
  }else {
    print(paste0("Life Expectancy ", x, " is lower than 50"))
  }
}
#########################################################
