mc=read.csv("C:/Users/Asus/Downloads/marketing_campaign - marketing_campaign.csv")
mc=data.frame(mc)
a5=spread(mc,MntWines,Income)
a5=spread(mc,Marital_Status,Education)

a6 = separate(mc, Dt_Customer, into = c("d", "m", "y"))
a7 = gather(mc, "campaign", "accepted", 21:25)
a8 = unite(a6, "Date",  c(d, m, y), sep = "-")

# find yearwise count of customers 
a9 = separate(mc, Dt_Customer, into = c("d", "m", "y")) %>%  group_by(y) %>% summarise("count" = n())

#find 
a10 = mutate(mc, "TotalAmt" = MntWines + MntFruits + MntSweetProducts + MntMeatProducts + MntGoldProds, "TotalModes" = NumWebPurchases + NumDealsPurchases + NumCatalogPurchases + NumStorePurchases)
a11 = a10 %>% group_by(Education) %>% summarise("mean_spent" =mean(TotalAmt), "standard_deviation" = sd(TotalAmt))
