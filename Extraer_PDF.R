#Extraer tablas de un PDF
#Cargo paquete
library(tabulizer)

#EJEMPLO 1

#Genero ruta del archivo
f <- system.file("examples", "data.pdf", package = "tabulizer")

#Uso función para extraer las tablas
f1 <-  extract_tables(f,output = "data.frame")

#Muestro dataframe de la primera hoja
f1[[1]]

#Muestro dataframe de la segunda hoja
f1[[2]]

#Muestro dataframe de la tercera hoja
f1[[3]]

#estructura tabla 1
str(f1[[1]])

#estructura tabla 2
str(f1[[2]])

#estructura tabla 3
str(f1[[3]])

#EJEMPLO 2
#Fijo ruta
ruta <- "http://cms.dm.uba.ar/academico/materias/1ercuat2015/probabilidades_y_estadistica_C/tabla_tstudent.pdf"

#Extraigo tablas
tabla <- extract_tables(ruta,output = "data.frame")

#Veo la estructura de la tabla
str(tabla)

#Muestro tabla 1 extraida
head(tabla[[1]])

#Muestro tabla 2 extraida
head(tabla[[2]])

#Asigno primera tabla
tabla1 <- tabla[[1]]

#Asigno nombre a tabla 1
names(tabla1) <- tabla1[2,]
names(tabla1)[1] <- "Grados de Libertad"

#Elinimo primera y segunda fila
tabla1 <- tabla1[-c(1,2),-6]

#Asigno segunda tabla
tabla2 <- tabla[[2]]
names(tabla2) <- names(tabla1)

#Muestro tablas
head(tabla1)
head(tabla2)










