#XIMENA MARCELA PACHECO GOMEZ
#02/03/23

#laboratorio semana 3 

#importar datos 

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"

#hacer mas chico el url 
profepa <- read.csv(prof_url)

prof_url2<- paste0("http://www.profepa.gob.mx/innovaportal/",
                   "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url2)

summary(profepa)
#restricciones 
## crear tablas con valores especificos 
profepa$Operativo == max(profepa$Operativo)
max.oper <-subset(profepa, profepa$Operativo == 24)
max.oper <-subset(profepa, profepa$Operativo == 2)
## revisar los datos 
boxplot(profepa$Operativo)

boxplot(profepa$Recorrido) 

prof.SOC <- subset(profepa, profepa$Operativo != max(profepa$Operativo))

boxplot(prof.SOC$Operativo)

#DROPBOX

#INSTALAR LIBERIA
 
library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#revisar solo diametro 

## mostrar como se comporta el diametro 

boxplot(conjunto$Diametro)

##diametro con especie
## cambiar la especie a factor 
conjunto$Especie <- as.factor(conjunto$Especie)

## cambiar clase a factor
conjunto$Clase <- as.factor(conjunto$Clase)

##diametro en base (en funcion) de a la especie 


boxplot(conjunto$Diametro ~ conjunto$Especie,
        col="pink",
        xlab="ESPECIE",
        ylab="DIAMETRO",
        main="BOSQUE")
## ESPECIE EN BASE A LA ALTURA 

boxplot(conjunto$Altura ~ conjunto$Especie,
        col="blue", 
        xlab="ESPECIE",
        ylab="ALTURA",
        main=("bosque"))
head(conjunto)

#descargar archivos de github 
##ejemplo
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/","202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)

## mi usuario
library(readr)
file <- paste0("https://raw.githubusercontent.com/xMarce20pacheco/D_experimental/main/Scripts/cuadro1.csv")
inventario_marce <- read_csv(file)

head(inventario)

#PARTE 2

mean(inventario_marce$Diametro)

sd(inventario$Diametro)

##Selección mediante restricciones

## individuos que tienen un diametro menos a 10 cm 
sum(inventario_marce$Diametro<10)

#funcion wich 
which(inventario_marce$Diametro < 10)

#Excluir los diámetros 

boxplot(inventario_marce$Diametro)
inventario_marce$Especie <- as.factor(inventario_marce$Especie)
inventario_marce$Clase <- as.factor(inventario_marce$Clase)

inventario_marce.13 <- inventario_marce[!(inventario_marce$Especie=="F"),]
inventario_marce.13

#Selección de una submuestra


inventario_marce.1 <- subset(inventario_marce, Diametro <=10)
head(inventario_marce.1)

mean(inventario_marce$Diametro)

mean(inventario_marce.1$Diametro)


#PARTE 3 
#histogramas

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep)

hist(mamiferos$total_sleep,
     xlim=c(0,20), ylim=c(0,14), 
     main="Total de horas sueño de las 39 especies",
     xlab = "Horas sueño",
     ylab = "Frecuencia",
     las = 1,
     col = "orange")

## BARPLOT 

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds <- table(chickwts$feed)
feeds

barplot(feeds[order(feeds, decreasing = TRUE)])
