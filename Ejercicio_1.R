library(readxl)
getwd()
df<-read_xlsx("datos//online_retail_II.xlsx")

head(df)
str(df)

library(VIM)
library(EnvStats)
library(naniar)

miss_var_summary(df)
miss_case_summary(df)


library(dplyr)

a<-unique(df$Invoice)
length(a) #28816 pedidos distintos 



df1 <- df %>%
  group_by(Invoice) %>%
  summarise(precio_medio = mean(Price))

