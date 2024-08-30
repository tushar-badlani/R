mc=read.csv("C:/Users/Asus/Downloads/marketing_campaign - marketing_campaign.csv")
mc=data.frame(mc)
a5=spread(mc,MntWines,Income)
a5=spread(mc,Marital_Status,Education)

a6 = separate(mc, Dt_Customer, into = c("d", "m", "y"))
a7 = gather(mc, "campaign", "accepted", 21:25)
a8 = unite(a6, "Date",  c(d, m, y), sep = "-")
