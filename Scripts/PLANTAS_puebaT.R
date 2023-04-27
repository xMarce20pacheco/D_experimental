
#XIMENA MARCELA PACHECO GOMEZ 2123909

#PRUEBAS DE T 
## 27/04/2023


# importar ----------------------------------------------------------------

## obligar a que solo busque en esa carpeta
setwd("C:/REPOSITORIO GIT/D_experimental/Scripts/")
PLANTAS <- read.csv("Scripts/bd1_vivero.csv", header=TRUE)

### Cambiar de character a factor

PLANTAS$Tratamiento <- as.factor(PLANTAS$Tratamiento)

# REVISAR DATOS -----------------------------------------------------------


