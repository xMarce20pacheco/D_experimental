#MARCELA PACHECO
# 01/03/2023
#PRACTICA 


#TAREA 

# funcion de read.csv

vivero <- read.csv("Scripts/bd1_vivero.csv", header = TRUE )

# CONVERTIR TRATAMIENTO A FACTOR

vivero$Tratamiento <- as.factor(vivero$Tratamiento)

summary(vivero)
sd(vivero$IE)
var(vivero$IE)

mean(vivero$IE)
