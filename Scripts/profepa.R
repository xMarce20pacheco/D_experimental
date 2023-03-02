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
        xlab="ESPECIE")
