#Extract 50 observations from diamonds

A = slice(diamonds, 1:50)

#Create 5 datasets from 1:50, 350:400, 650:700. 900:950, 1200:1250
B = slice(diamonds, 350:450)
C = slice(diamonds, 650:700)
D = slice(diamonds, 900:950)
E = slice(diamonds, 1200:1250)




A1 = group_by(diamonds, clarity, color) %>% summarise(count = n())

ggplot(A1, aes(x= clarity, fill = color, y = count))+ geom_bar(stat = 'identity')

ggplot(diamonds, aes(carat, price, color = color)) + geom_point()

ggplot(diamonds, aes(price, cut, fill = cut))+ geom_boxplot()

ggplot(diamonds, aes(price, fill = clarity))+ geom_boxplot()

ggplot(diamonds, aes(price, fill = color))+ geom_boxplot()


ggplot(A, aes(carat, price, color = color, shape = cut, size = clarity))+geom_point()

summary(diamonds)

ggplot(diamonds, aes(price))+ geom_boxplot()

A2 = diamonds %>% filter(price >5000 & price<9000)
ggplot(A2, aes(carat, price, color = color))+geom_point()


ggplot(diamonds, aes(cut, price, fill = color))+geom_boxplot()
