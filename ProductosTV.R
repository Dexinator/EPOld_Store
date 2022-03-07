library(dplyr)
prods<-read.csv("exportedprods.csv",encoding = "UTF-8")
TVPolanco<-subset(prods,prods$Inventario==1 & grepl("TV",prods$SKU)&grepl("Polanco",prods$Etiquetas))
TVAnzures<-subset(prods,prods$Inventario==1 & grepl("TV",prods$SKU)&grepl("Anzures",prods$Etiquetas))
TVPolanco$Categorías
group_by(TVPolanco,by=Categorías)
cats_dirty<-unique(TVPolanco$Categorías)
strsplit(cats_dirty, ">")

