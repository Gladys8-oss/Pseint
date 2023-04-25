Algoritmo Distribuci�nCamarones
	
	Definir n, m, i, j como Enteros
	Definir capacidadCamion como Entero
	Definir pesoPaquete como Entero
	Definir cargaCamion como Entero
	Definir totalCargaDespachada como Entero
	Dimension  paquetes[5]   // arreglo para almacenar los pesos de los paquetes
	Dimension  cargas[5] 
	
	//Escribir "Ingrese el numero de camiones a cargar"
	//Leer n  // n�mero de camiones a cargar
	Para n = 1 hasta 5 hacer 
	Escribir "Ingrese la capacidad Maxima de cada camion " n 
	Leer capacidadCamion  // capacidad de carga de cada cami�n
	Escribir "Ingrese el numero de paquetes disponibles"
	Leer m  // n�mero de paquetes disponibles
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
	cargas[n] <- 0 // arreglo para almacenar la carga de cada cami�n
	j <- 1  // �ndice del paquete actual
	Para i = 1 hasta n hacer
		cargaCamion <- 0  // iniciar la carga del cami�n en 0
		Mientras j <= m Y cargaCamion + paquetes[j] <= capacidadCamion hacer
			cargaCamion <- cargaCamion + paquetes[j]  // sumar el peso del paquete al cami�n
			j <- j + 1  // pasar al siguiente paquete
		FinMientras
		cargas[i] <- cargaCamion  // almacenar la carga del cami�n en el arreglo
		totalCargaDespachada <- totalCargaDespachada + cargaCamion // sumar la carga del cami�n a la carga total
	FinPara
FinPara
	totalCargaDespachada <- 0
	Para i = 1 hasta n hacer
		totalCargaDespachada <- totalCargaDespachada + cargas[i]  // sumar la carga despachada
		Escribir "Cami�n", i, " cargado con ", cargas[i], " Kgs"
	FinPara
	
	Escribir "Total de carga despachada:", totalCargaDespachada, "Kgs"
	
FinAlgoritmo