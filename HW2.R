#ximena marcela pacheco gomez
#01/03/23
#tarea 2

CONJUNTO <- read.csv("Scripts/tarea.csv", header = TRUE )

#seleccion de datos 
mean(CONJUNTO$ALTURA)

#ALTURA MENOR O IGUAL QUE LA MEDIA
H_media <-subset(CONJUNTO, CONJUNTO$ALTURA <= 13.94) ##VALOR DE LA MEDIA DE LA ALTURA
#ALTURA MENOR A 16.5 
H.16 <-subset(CONJUNTO, CONJUNTO$ALTURA <= 16.5)

#VECINOS 

Vecinos_3 <- subset(CONJUNTO, CONJUNTO$VECINOS <=3) 
Vecinos_4 <- subset(CONJUNTO, CONJUNTO$VECINOS >4)

#diametro 
mean(CONJUNTO$DIAMETRO)
DBH_media <-subset(CONJUNTO, CONJUNTO$DIAMETRO <15.79) ##VALOR DE LA MEDIA DEL DIAMETRO  
DBH_16  <-subset(CONJUNTO, CONJUNTO$DIAMETRO >15.79) 

#especie 

CONJUNTO$ESPECIE<- as.factor(CONJUNTO$ESPECIE)

cedro <-subset(CONJUNTO, CONJUNTO$ESPECIE == "C")
esp_2 <-subset(CONJUNTO, CONJUNTO$ESPECIE == "F")

##Cuantas observaciones son menores o iguales a 16.9 cm de Diametro
sum(CONJUNTO$Diametro >16.9)           

##Cuantas observacions son mayores a18.5 metros de Altura
sum(CONJUNTO$ALTURA >18.5)

#VISUALIZACION DE DATOS 
##alturas
head(CONJUNTO$ALTURA)

hist(CONJUNTO$ALTURA,
     main="altura de especies",
     xlab = "ALTURA",
     ylab = "Frecuencia",
     col = "red")
feeds <- table(CONJUNTO$ALTURA)
feeds
barplot(feeds)

hist(H_media$ALTURA)

hist(H.16$ALTURA)

##VECINOS 

hist(CONJUNTO$VECINOS, 
     main="vecinos",
     col="red")

hist(Vecinos_3$VECINOS)
hist(Vecinos_4$VECINOS)

##diametro 
hist(CONJUNTO$DIAMETRO, 
     main="DIAMETRO",
     col="black")

hist(DBH_16$DIAMETRO)
hist(DBH_media$DIAMETRO)

#ESTADISTICAS BASICAS

mean(CONJUNTO$ALTURA)
sd(CONJUNTO$ALTURA)

mean(H_media$ALTURA)
sd(H_media$ALTURA)

mean(H.16$ALTURA)
sd(H.16$ALTURA)

mean(CONJUNTO$VECINOS)
sd(CONJUNTO$VECINOS)

mean(Vecinos_3$VECINOS)
sd(Vecinos_3$VECINOS)

mean(Vecinos_4$VECINOS)
sd(Vecinos_4$VECINOS)

mean(CONJUNTO$DIAMETRO)
sd(CONJUNTO$DIAMETRO)

mean(DBH_16$DIAMETRO)
sd(DBH_16$DIAMETRO)

mean(DBH_media$DIAMETRO)
sd(DBH_media$DIAMETRO)

#lineas de comando en r 


library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

head(conjunto)
