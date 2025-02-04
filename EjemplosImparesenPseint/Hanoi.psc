Algoritmo Hanoi
	
	Dimension torres[3,10], cant_discos[3]
	
	Escribir "Ingrese el nro de discos (1-8):"
	leer discos
	mientras discos<1 | discos>8 Hacer
		Escribir "El numero de discos debe ser mayor a 0 y menor a 5:"
		leer discos
	finmientras

	cant_discos[1]<-discos
	cant_discos[2]<-0
	cant_discos[3]<-0
	Para i<-1 Hasta discos hacer
		torres[1,i]<-discos-i+1
	FinPara
	
	cant_movs<-0
	Mientras cant_discos[3]<>discos Hacer
		
		Limpiar Pantalla
		
		Para i<-1 Hasta 3 Hacer 
			escribir "Torre ",i
			si cant_discos[i]=0 Entonces
				Escribir ""
			sino
				para j<-cant_discos[i] hasta 1 con paso -1 Hacer 
					segun torres[i,j] Hacer 
						1: Escribir "                   XX"
						2: Escribir "                 XXXXXX"
						3: Escribir "               XXXXXXXXXX"
						4: Escribir "             XXXXXXXXXXXXXX"
						5: Escribir "           XXXXXXXXXXXXXXXXXX"
						6: Escribir "         XXXXXXXXXXXXXXXXXXXXXX"
						7: Escribir "       XXXXXXXXXXXXXXXXXXXXXXXXXX"
						8: Escribir "     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
					finsegun
				FinPara
			finsi
			Escribir "   ----------------------------------"
			Escribir ""
		FinPara
		
		Escribir "Mover desde la torre: "
		leer t1
		Escribir "hacia la torre: "
		leer t2
		
		si t1<1 | t1>3 | t2<1 | t2>3 Entonces 
			Escribir "Movimiento invalido"
			Esperar Tecla
		sino
			Si cant_discos[t1]=0 Entonces 
				Escribir "Movimiento invalido"
				Esperar Tecla
			SiNo
				disco_a_mover <- torres[t1,cant_discos[t1]] 
				puede_mover<-verdadero
				Si cant_discos[t2]<>0 entonces 
					Si torres[t2,cant_discos[t2]]<disco_a_mover Entonces
						puede_mover<-Falso
					FinSi
				FinSi
				Si puede_mover Entonces 
					cant_movs <- cant_movs+1
					cant_discos[t2]<-cant_discos[t2]+1
					torres[t2,cant_discos[t2]] <- disco_a_mover
					cant_discos[t1]<-cant_discos[t1]-1
				SiNo
					Escribir "Movimiento invalido"
					Esperar Tecla
				FinSi
			FinSi
		FinSi
		
	FinMientras
	
	Limpiar Pantalla
	Escribir "Juego finalizado en ",cant_movs," movimientos!"
	
FinAlgoritmo
