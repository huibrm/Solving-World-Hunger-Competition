library(dplyr)
library(tidyr)

# importing data
dataA <- read.csv("data/A_hhold_train.csv", stringsAsFactors = FALSE)
dataB <- read.csv("data/B_hhold_train.csv", stringsAsFactors = FALSE)
dataC <- read.csv("data/C_hhold_train.csv", stringsAsFactors = FALSE)

dataAtest <- read.csv("data/A_hhold_test.csv", stringsAsFactors = FALSE)
dataBtest <- read.csv("data/B_hhold_test.csv", stringsAsFactors = FALSE)
dataCtest <- read.csv("data/C_hhold_test.csv", stringsAsFactors = FALSE)

dataA.indiv <- read.csv("data/A_indiv_train.csv", stringsAsFactors = FALSE)
dataB.indiv <- read.csv("data/B_indiv_train.csv", stringsAsFactors = FALSE)
dataC.indiv <- read.csv("data/C_indiv_train.csv", stringsAsFactors = FALSE)

# adding household count from individal data to household data, writing a csv and returning a new dataframe
add.house.count = function(df1, df2, name){
  group.by.house <- df1 %>% group_by(id) %>% summarise(count=max(iid))
  df <- df2 %>% left_join(group.by.house, by="id")
  write.csv(df, name)
  return(df)
}
# writng and creating new dataframe with individule attributes 
dfAtest <- add.house.count(dataA.indiv, dataAtest, "dfAtest.csv")

dfBtest <- add.house.count(dataB.indiv, dataBtest, "dfBtest.csv")

dfCtest <- add.house.count(dataC.indiv, dataCtest, "dfCtest.csv")
