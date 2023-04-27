
#XIMENA MARCELA PACHECO GOMEZ 2123909

#PRUEBAS DE T 
## 27/04/2023


# importar ----------------------------------------------------------------

## obligar a que solo busque en esa carpeta
setwd("C:/REPOSITORIO GIT/D_experimental/Scripts/")
PLANTAS <- read.csv("bd1_vivero.csv", header=TRUE)

### Cambiar de character a factor

PLANTAS$Tratamiento <- as.factor(PLANTAS$Tratamiento)

# REVISAR DATOS -----------------------------------------------------------

#NORMALIDAD
shapiro.test(PLANTAS$IE)
##  <son normales>


#VARIANAZAS
bartlett.test(PLANTAS$IE ~ PLANTAS$Tratamiento)


# P_T INDEPENDIENTES ------------------------------------------------------

t.test(PLANTAS$IE ~ PLANTAS$Tratamiento, var.equal=TRUE)
## Rechazo la hipotesis nula, el fertilizante si esta haciendo que las plantas mejoren en IE



# PRUEBA DE 1 MUESTRA -----------------------------------------------------
mean(PLANTAS$IE)
## Si existen diferencias sig con .90 (mean fert)

t.test(PLANTAS$IE, mu = 0.90)

##cambiar el valor de la media establecida 
t.test(PLANTAS$IE, mu = 0.85)


