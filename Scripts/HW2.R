#ximena marcela pacheco gomez
#01/03/23
#tarea 2

CONJUNTO <- read.csv("Scripts/tarea.csv", header = TRUE )

#seleccion de datos 
mean(CONJUNTO$ALTURA)

#ALTURA MENOR O IGUAL QUE LA MEDIA
H.media <-subset(CONJUNTO, CONJUNTO$ALTURA <= 14)
#ALTURA MENOR A 16.5 
H.16 <-subset(CONJUNTO, CONJUNTO$ALTURA <= 16.5)

#VECINOS 
VECINOS_3  <-subset(CONJUNTO, CONJUNTO$VECINOS <=3)

VECINOS_4 <- subset(CONJUNTO, CONJUNTO$VECINOS > 4(CONJUNTO$ARBOLES)

#diametro

diametro <-subset(CONJUNTO, CONJUNTO$DIAMETRO < 14)
diametro <-subset(CONJUNTO, CONJUNTO$DIAMETRO >16 )
