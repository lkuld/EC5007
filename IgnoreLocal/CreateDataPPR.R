
library(stringr)

property_df <- read.csv("./IgnoreLocal/PPR-ALL.csv")
save(property_df, file = "./IgnoreLocal/property_df.RData")

d <-property_df

d$date <- as.Date(d$Date.of.Sale..dd.mm.yyyy., '%d/%m/%Y')

may23_df <- d[d$date>as.Date("30/04/2023", '%d/%m/%Y') & d$date<as.Date("1/06/2023", '%d/%m/%Y'),-10]
save(may23_df, file = "./data/may23_df.RData")

d$year <- str_extract(d$Date.of.Sale..dd.mm.yyyy.,"[0-9]{4}")

limerick_property_df <- d[d$County=="Limerick" & d$year %in% 2018:2022,]

limerick_property_df$price <- str_remove_all(limerick_property_df$Price....,'[^0-9]') |> as.numeric() / 100

limerick_property_df$address <- str_trim(limerick_property_df$Address)

limerick_property_df <- limerick_property_df[,c("year", "address", "price")]
row.names(limerick_property_df) <- NULL
save(limerick_property_df, file = "./data/prop_lim.RData")

