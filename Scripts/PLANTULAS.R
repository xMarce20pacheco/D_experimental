# XIMENA MARCELA PACHECO GOMEZ
## 212390


setwd("C:/REPOSITORIO GIT/D_experimental/Scripts/")

plantulas <- read.csv("bd1_vivero.csv", header = TRUE)
plantulas$Tratamiento <- as.factor(plantulas$Tratamiento)

# Revisar datos
shapiro.test(plantulas$IE)

bartlett.test(plantulas$IE ~ plantulas$Tratamiento)

# t-test-independiente ----------------------------------------------------
t.test(plantulas$IE ~ plantulas$Tratamiento, var.equal=T)

# t_test one sample -------------------------------------------------------
mean(plantulas$IE)
t.test(plantulas$IE, mu = 0.90)
t.test(plantulas$IE, mu =0.85)

#importar archivo
setwd("C:/REPOSITORIO GIT/D_experimental/Scripts/")
semilla <-read.csv("mainproduccion.csv", header = TRUE)


#tiempo 
semilla$Tiempo <-as.factor(semilla$Tiempo)

boxplot(semilla$Tiempo , semilla$Kgsem)

boxplot(semilla$Tiempo , semilla$BioRama)

boxplot(semilla$Tiempo , semilla$Germ)

#prueba de t
t.test(semilla$Kgsem ~ semilla$Tiempo, paired = TRUE)

t.test(semilla$Germ ~ semilla$Tiempo, paired = TRUE)

boxplot(semilla$Kgsem)

t.test(semilla$H6 ~ semilla$Tiempo, paired = TRUE)

t.test(semilla$BioRama ~ semilla$Tiempo, paired = TRUE)