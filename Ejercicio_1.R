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

# Calcular numero de productos por pedido
df2 <- df %>%
  group_by(Invoice) %>%
  summarise(numero_productos = n())

# Calcular el precio por pedido
df3 <- df %>%
  group_by(Invoice) %>%
  summarise(precio_total = sum(Price))
