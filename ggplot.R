View(diamonds)

ggplot(diamonds, aes(x=cut))+geom_bar()

#flip axis
ggplot(diamonds, aes(x=cut))+geom_bar()+coord_flip()

ggplot(diamonds, aes(x=clarity)) + geom_bar()
ggplot(diamonds, aes(x=color)) + geom_bar()

#fill colour
ggplot(diamonds, aes(x=clarity)) + geom_bar(fill = "cyan", color = "black", width = 0.8)
#color adds border width is width of bar

ggplot(diamonds, aes(x=clarity)) + geom_bar(fill = "cyan", color = "black", width = 0.8, alpha = 0.2)
#alpha is transperency

#for diffrent colours to each bar
ggplot(diamonds, aes(x = clarity,fill = clarity)) + geom_bar()

#group by the data as per clarity and find count
dm =group_by(diamonds, clarity) %>% summarise(count = n())

ggplot(dm, aes(x = clarity, y=count))+geom_bar(stat = "identity", fill = "cyan")+geom_text(aes(label = count), vjust=-0.5, color = "red")


ggplot(dm, aes(x = clarity, y=count))+geom_bar(stat = "identity", fill = "cyan")+geom_text(aes(label = count), hjust=-0.5, color = "red")+ labs(x = "clarity", y = "No of diamonds", title = "Frequency of clarity")+coord_flip()
