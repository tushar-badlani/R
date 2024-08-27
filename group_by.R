View(mtcars)
cars_dataset = data.frame(mtcars)

grouped = group_by(cars_dataset, cyl )
A =cars_dataset %>%group_by(cyl) %>% summarise(Avg_mpg = mean(mpg))
