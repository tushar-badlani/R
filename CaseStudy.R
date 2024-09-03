View(state.center)
View(state.region)
View(state.x77)

#change state.x77 to dataframe
x77 = data.frame(state.x77)

#for state.x77 check datatypes of all variables
str(state.x77)

#is there any factor datatype? no

#is there na values
sum(is.na(x77))
# no na values

#no fo variables and obsservation in datset
dim(x77)
region = data.frame(state.region)
View(region)
dim(region)

center = data.frame(state.center)
View(center)
dim(center)

name = data.frame(state.name)


full = cbind(x77,region, center, state.name)
View(full)
str(full)

total = sum(full$Population)
print(ans)

group = full %>% group_by(state.region) %>% summarise(sum = sum(Population))
View(group)


area_sort = arrange(full, Area)
filter(full, Area == min(full$Area)) %>% select(state.name)
filter(full, Area == max(full$Area)) %>% select(state.name)

ill = mutate(full,ill_count = (Illiteracy * Population)/100)
total_ill = sum(ill$ill_count)
ans = total_ill/total
ans*100
