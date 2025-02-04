Algoritmo Primos
	
	Escribir "Ingrese la cantidad de numeros primos a mostrar:"
	Leer cant_a_mostrar
	
	Escribir "1: 2"
	cant_mostrados <- 1
	n<-3           
	
	Mientras cant_mostrados<cant_a_mostrar Hacer
		
		es_primo <- Verdadero 
		
		Para i<-3 hasta rc(n) con paso 2 Hacer 
			Si n MOD i = 0 entonces 
				es_primo <- Falso 
			FinSi
		FinPara
		
		Si es_primo Entonces
			cant_mostrados <- cant_mostrados + 1
			Escribir cant_mostrados, ": ",n
		FinSi
		
		n <- n + 2 
		
	FinMientras
	
FinAlgoritmo
