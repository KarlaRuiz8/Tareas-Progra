Funcion Saludar
	Escribir "Hola mundo!"
FinFuncion

Funcion res <- CalcularDoble(num) 
	res <- num*2 
FinFuncion

Funcion Triplicar(num por referencia) 
	num <- num*3 
FinFuncion

Algoritmo PruebaFunciones
	
	
	Escribir "Llamada a la funcion Saludar:"
	Saludar 
	
	Escribir "Ingrese un valor num�rico para x:"
	Leer x
	
	Escribir "Llamada a la funci�n CalcularDoble (pasaje por valor)"
	Escribir "El doble de ",x," es ", CalcularDoble(x)
	Escribir "El valor original de x es ",x
	
	Escribir "Llamada a la funci�n Triplicar (pasaje por referencia)"
	Triplicar(x)
	Escribir "El nuevo valor de x es ", x
	
FinAlgoritmo
