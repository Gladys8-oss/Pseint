1. Desarrollar lo que se le indica a continuación.
Una empresa productora de camarones distribuye sus productos hacia diferentes almacenes sucursales. Disponen de un muelle de carga a donde van saliendo paquetes con camarones de 7000 y 9000 Kgs. La empresa dispone de una flota de camiones con capacidades de carga de entre 28000 y 34000 Kg.
Se pretende establecer un protocolo consistente en cargar 5 camiones diarios. Cada camión se quiere cargar como máximo a su límite de capacidad debiendo partirsi con el siguiente paquete en la línea de producción se fuera a exceder su capacidad. Controlar el peso de carga y el número de camiones con la implementación de arreglos.
La empresa necesita desarrollar un programa que le pida al operario: la capacidad del camión y el peso de cada uno de los paquetes que se incluirán en el camión los paquetes, indicándole si debe cargar el paquete siguiente o despachar el camión para comenzar a cargar otro camión.
Implementar una función para Al final del programa deberá imprimir la carga con la que se despachó cada camión y la cantidad de paquetes que lleva cada camión, finalmente indicar la cantidad de kg. que se despacharon en total.




Algoritmo DistribuciónCamarones
	
	Definir n, m, i, j como Enteros
	Definir capacidadCamion como Entero
	Definir pesoPaquete como Entero
	Definir cargaCamion como Entero
	Definir totalCargaDespachada como Entero
	Dimension  paquetes[5]   // arreglo para almacenar los pesos de los paquetes
	Dimension  cargas[5] 
	
	//Escribir "Ingrese el numero de camiones a cargar"
	//Leer n  // número de camiones a cargar
	Para n = 1 hasta 5 hacer 
	Escribir "Ingrese la capacidad Maxima de cada camion " n 
	Leer capacidadCamion  // capacidad de carga de cada camión
	Escribir "Ingrese el numero de paquetes disponibles"
	Leer m  // número de paquetes disponibles
	//paquetes[m] <- pesoPaquete
	Para i = 1 hasta m hacer
		Escribir "Ingrese el peso del paquete en Kg" 
		Leer pesoPaquete
		Si pesoPaquete<= capacidadCamion Entonces
			Escribir "debe de llenar el siguiente paquete"
			//paquetes[j] <- pesoPaquete 
		SiNo
			Escribir ""
		Fin Si
		paquetes[i] <- pesoPaquete
	FinPara
	n <- n 
	cargas[n] <- 0 // arreglo para almacenar la carga de cada camión
	j <- 1  // índice del paquete actual
	Para i = 1 hasta n hacer
		cargaCamion <- 0  // iniciar la carga del camión en 0
		Mientras j <= m Y cargaCamion + paquetes[j] <= capacidadCamion hacer
			cargaCamion <- cargaCamion + paquetes[j]  // sumar el peso del paquete al camión
			j <- j + 1  // pasar al siguiente paquete
		FinMientras
		cargas[i] <- cargaCamion  // almacenar la carga del camión en el arreglo
		totalCargaDespachada <- totalCargaDespachada + cargaCamion // sumar la carga del camión a la carga total
	FinPara
FinPara
	totalCargaDespachada <- 0
	Para i = 1 hasta n hacer
		totalCargaDespachada <- totalCargaDespachada + cargas[i]  // sumar la carga despachada
		Escribir "Camión", i, " cargado con ", cargas[i], " Kgs"
	FinPara
	
	Escribir "Total de carga despachada:", totalCargaDespachada, "Kgs"
	
FinAlgoritmo
