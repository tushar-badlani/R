View(mtcars)
cars_dataset = data.frame(mtcars)

grouped = group_by(cars_dataset, cyl )
A =cars_dataset %>%group_by(cyl) %>% summarise(Avg_mpg = mean(mpg))
unique(cars_dataset$gear)
B =cars_dataset %>%group_by(gear) %>% summarise(no_of_rows = n(), avg_wt = mean(wt))

#create 2 dataframes 1 st frame contains customer name, product number, price and category
#2nd dataframe contains category and repetitions

customer_name = c("A", "B", "C", "D", "E")
product_no = c(1,2,3,4, 5)
price= c(200,300,250,600, 100)
category = c("Clothes","Electronic", "Stationary", "Others", "Clothes")

df1 = data.frame(customer_name, product_no, price, category)


category = c("Clothes", "Electronic", "Stationary")
rep = c(20,21,35)

df2 = data.frame(category, rep)

A1=left_join(df1, df2)

A2=semi_join(df1,df2)
