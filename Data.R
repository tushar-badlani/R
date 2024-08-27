#creating own dataset
Serial_no = c(1,2,3,4)
City_name= c("Pune", "Mumbai", "Delhi", "Chennai")
Temprature = c(34, 38,25, 39)
City_dataset = data.frame(Serial_no, City_name, Temprature)
View(City_dataset)

ncol(City_dataset)
nrow(City_dataset)
dim(City_dataset)
summary(City_dataset)

#Use of inbuilt dataset
#data()
#View all
data(package = .packages(all.available = TRUE))
View(ChickWeight)
summary(ChickWeight)
unique(ChickWeight$weight)
class(ChickWeight$weight)

#importing dataset
summary(Titanic)