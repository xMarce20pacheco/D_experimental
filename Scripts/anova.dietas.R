#XIMENA MARCELA PACHECO GOMEZ 
## ANOVA 18/05/2023

# EXPERIMENTO GANANCIA EN PESO(gp) BASADO EN DIFERENTES DIETAS 
##niveles de factor: 4 

dieta1 <- c(2.4, 2.2, 3.4, 1.6)
dieta2 <- c(2.2, 1.9, 1.7, 2.1)
dieta3 <- c(3.3, 1.3, 2.8, 2.1)
dieta4 <- c(1.6, 2.5, 1.4, 2.4)

GP <- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1, 
        3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4)

trat <-gl(4,4,16, labels = c("dieta1", "dieta2", "dieta3", "dieta4"))
bloques <- gl(4,4,16, labels = c("bajo", "normal", "sobrepeso", "obesidad"))
DIETAS <- data.frame(trat,GP)


boxplot(DIETAS$GP ~ DIETAS$trat, 
        col="yellow",
        xlab="DIETAS",
        ylab="ganancias en peso(kg)")


bloques <- gl(4,4,16, labels = c("bajo", "normal", "sobrepeso", "obesidad"))
DIETAS <- data.frame(trat, bloques, GP)

#ANALISIS DE VARIANZA con un solo bloque (tratamiento)
## si los 4 tippos de dietass es igual o diferente 

##ganancia de peso basado en los tratamientos 
tapply(DIETAS$GP, DIETAS$trat, sum)

tapply(DIETAS$GP, DIETAS$trat, var)

## hay diferencias en la dieta2  a la dieta 4, se hace una prueba de analisis 
fligner.test(DIETAS$GP, DIETAS$trat)
barleTt.test(DIETAS$GP, DIETAS$trat)

#sSUMA DE CUADRADOS TRATAMIENTO

##ANOVA 
diet.aov <- aov(DIETAS$GP ~ DIETAS$trat)
summary(diet.aov)

##si es mayor mean Sq de residual que tratamientos NO HABRA DIFERENCIAS SIG (en la varianza de peso)

#CORREGIR LOS DATOS DE CONDICION DE LAS PERSONAS 
write.table(DIETAS, "C:/REPOSITORIO GIT/D_experimental/Scripts/DIETAS.csv", 
            sep = ",")

setwd("C:/REPOSITORIO GIT/D_experimental/Scripts/")
DIETAS2 <- read.csv("tabla2.csv", header= T)

DIETAS2$trat <- as.factor(DIETAS2$trat)
DIETAS2$bloque <- as.factor(DIETAS$bloque)

TABLA.aov <- aov(DIETAS2$GP ~ DIETAS2$trat + DIETAS2$bloque)
summary(TABLA.aov)
