x <- c(1,5,7,9,10,11,12) #Variable Independiente
y <- c(7,8,5,13,10,10,14) #Variable Dependiente
xy <- x*y
x2 <- x**2
y2 <- y**2
plot(x,y)
#PROMEDIOS
mean(x) #Meses
mean(y)  #Miles en demanda 
mean(xy) #Meses x Miles en Demanda
mean(x2) #Meses o x al cuadrado
mean(y2) #Demanda o y al cuadrado

#RELACION ENTRE VARIABLES
sxy=mean(xy)-(mean(x)*mean(y))     #Covarianza   Este dato determina la relacion entre variables
sx=sqrt(mean(x2)-(mean(x)**2))        #Varianza de x      
sy=sqrt(mean(y2)-(mean(y)**2))      #Varianza de y
sx2=mean(x2)-(mean(x)**2)    #Varianza de x al cuadrado
sy2=mean(y2)-(mean(y)**2)    #Varianza de y al cuadrado
rxy=sxy/(sx*sy) #Relacion entre Variables
R2=(rxy**2)*100 #Porcentaje de Bondad
#MODELO DE REGRESION
#El modelo esta dado por la formula y=Bx+A 
#donde x corresponde a la variable independiente
B=sxy/sx2 #Se calcula dividiendo la varianza de xy por la varianza de x al cuadrado
A=mean(y)-(B*mean(x)) #Promedio de y menos el producto de B por promedio de x
#Con los resultados obtenidos se puede pronosticar
#En este caso se hara con el mes 13 o enero del siguiente periodo
Pronostico=B*13+A
#El pronostico arroja un resultado de 35.59
#Es confiable debido al coeficiente de correlacion lineal


