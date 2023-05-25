# XIMENA MARCELA PACHECO GOMEZ 2123909
##25/05/2023
 
##code insert section 

# importar datos ----------------------------------------------------------



setwd("C:/REPOSITORIO GIT/D_experimental/Scripts/")

germ <- read.csv("pregerminacion.csv", header = TRUE)

germ$TRATAMIENTO <- as.factor(germ$TRATAMIENTO)


# grafica -----------------------------------------------------------------

boxplot(germ$PG ~ germ$TRATAMIENTO, 
        col="pink",
        xlab="TRATAMIENTO GERMINATIVO",
        ylab=" % GERMINACION")


# ordenar los tratamientos ------------------------------------------------

levels(germ$TRATAMIENTO)

germ$TRATAMIENTO <- factor(germ$TRATAMIENTO, levels =c("control", "Em", "AgAm", "AgCal", "H?SO?"))
levels(germ$TRATAMIENTO)

tapply(germ$PG, germ$TRATAMIENTO, mean)http://127.0.0.1:36611/graphics/plot_zoom_png?width=1200&height=886
tapply(germ$PG, germ$TRATAMIENTO, var)



# ANOVA -------------------------------------------------------------------

germ.aov <- aov(germ$PG ~ germ$TRATAMIENTO)
summary(germ.aov)


# PRUEBA DE TUCKEY --------------------------------------------------------

##en ANOVA - TUCKEY comparar trat y dice quien es diferente de quien 

TukeyHSD(germ.aov, conf.level = 0.95)

##entre Em- ctrl diferencia de 4% y SI hay dif
##entre Agam- ctrl diferencia de 5% y SI hay dif
##entre AgCal- ctrl diferencia de 3.5% y SI hay dif

plot(TukeyHSD(germ.aov), las =1, col="orange")


# agregar letras de diferencias -------------------------------------------


boxplot(germ$PG ~ germ$TRATAMIENTO, 
        col="pink",
        xlab="TRATAMIENTO GERMINATIVO",
        ylab=" % GERMINACION",
        ylim=c(0,10))
text(1,4.2, "a", col="red")
text(2,8.3,"b", col="blue")
text(3,9.4,"b", col="blue")
text(4,7.4,"b", col="blue")
text(5,3.3,"a", col="red")

