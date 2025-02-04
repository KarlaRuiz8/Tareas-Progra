Algoritmo Digitos
	
	Escribir "Ingrese un numero entero postivo:"
	Leer n
	
	cont <- 0 
	aux <- n
	Mientras aux>0 hacer
		cont <- cont + 1 
		aux <- trunc(aux/10) 
	FinMientras
	Escribir "El numero tiene ",cont," digitos"
	
	aux<-n
	Para i<-1 hasta cont Hacer
		pot <- 10^(cont-i) 
		digito <- trunc (aux / pot) 
		aux <- aux - digito*pot 
		Escribir "El digito ",i," es ",digito
	FinPara
	
FinAlgoritmo
