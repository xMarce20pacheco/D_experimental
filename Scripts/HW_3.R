#XIMENA MARCELA PACHECO GOMEZ 
## 16/03/23

## hw 3 
#PROBLEMA 1 


#PROBLEMA 2 

grupo_a <- c(80,90,90,100)
grupo_b <- c(60,65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
## sera la altura promedio mayor la del grupo a porque no hay tantos datos por lo tanto no hay tanta variabilidad
##media  de grupo a 
mean(grupo_a)
##media de grupo b 
mean(grupo_b)

#PROBLEMA 3 

calificaciones<- c(87,72,85,79)
mean(calificaciones)
##necesita una calificacion de 79 

#PROBLEMA 4 

## RESPUESTA CORRECTA : A 

#PROBLEMA 5 

GERMINACIONES <- read.csv("Scripts/GERMINACIONES.csv", header = TRUE )
##A podemos utilizar un grafico de barras 
##B media 
mean(GERMINACIONES$CAJAS.PETRI)
##C MEDIANA
median(GERMINACIONES$CAJAS.PETRI)

#PROBLEMA 6 
set <- c(2, 2, 3, 6, 10)
mean(set)
median(set)
# Crear la función getmode.

## + 5
set_1 <- c(7, 7, 8, 11, 15)
mean(set_1)
median(set_1)
## c 
## los datos se ven similiares entre ellos

##d 
set_2 <- c(10, 10, 15, 30, 50)
mean(set_2)
median(set_2)
## el rango de los datos es mayor 

# PROBLEMA 7 

