

Algoritmo Proyecto_1
	
	Definir  PrecioSinIva, Cantidad, Peso Como Entero
	
	
	Definir  Descuento_cupon, IVA, Descuento_cantidad, CostoFinal Como Real
	
	
	Definir   Cupon_si,Cupon_no, Nacional,Internacional  Como Caracter
	
	
	PrecioSinIva <- 100
	
	Cantidad <- x
	
	Peso <- 3
	
	Descuento_cupon <- 0.10
	
	Descuento_cantidad <- 0.05
	
	IVA <-  0.12
	
	costoFijo <- 10
	
	
	Cupon_si <- "posivo" 
	Cupon_no <- "negativo"
	
	
	Dimensionar destinos[2] 
	
	
	destinos[1] <- "Nacional"
	destinos[2] <- "Internacional"
	
	
	CostoFinal <- i
	
	
	//Ingrese el  numero de productos
	Escribir "ingrese pares de zapatillas"
	Leer Cantidad
	
	//Sub total de los productos.

	Subtotal <- Cantidad * PrecioSinIva 
	Escribir "Subtotal :" Subtotal
	
	//Aplicar Descuento
	Escribir "El cliente tiene cupon de descuento"
	Leer Descuento
	
	Si Descuento es "positivo"   Entonces
		
		subtotal2 <- Subtotal * Descuento_cupon  
		
		Escribir "descuento aplicado -10 % :" subtotal2
		
		
	SiNo 
		Escribir "No aplica descuento"
	Fin Si
	
	//Subtotal con descuento aplicado
	
	subtotal3SinIva <- subtotal - Subtotal2
	
	Escribir "subtotal con descuento aplicado : " subtotal3SinIva
	
	// Aplicar IVA
	
	PrecioConIVA <- subtotal3SinIva  * (1+IVA)
	
	Escribir " Precio con IVA : " PrecioConIVA
	
	//Aplicar descuento 5 % por compras mayores a dos pares.
	
	
	Si Cantidad  >= 2 Entonces
		
		PrecioD <- PrecioConIVA * Descuento_cantidad 
		
		PrecioDescuento <- PrecioConIVA - PrecioD
		
		Escribir "Aplicar descuento de -5 % :" PrecioD
		Escribir "Precio con descuento por cantidad :" PrecioDescuento
		
	SiNo
		Escribir " No aplica descuento por menos de dos pares"
		
	Fin Si
	
	// ingrese el destino
	
	Escribir " Ingrese destino de envío "
	
	Escribir "1.Nacional"
    Escribir "2.Internacional"
    
	leer opcion
	
	// ingrese el peso 
	Escribir "ingrese el peso"
	leer Peso
	
	
	//Calculo final con costo de envío"
	
	Si opcion = "1.Nacional" Entonces
		
        i <- costoFijo + PrecioDescuento
		
        Escribir "Destino elegido: ", opcion
		
        Escribir "Costo total a pagar con envío Nacional: ", i
    Sino
		i <- costoFijo + PrecioDescuento + (Peso * Cantidad)
		
        Escribir "Costo total a pagar con envío Internacional :", i
		
    FinSi
	
	Escribir "---------------------------------------------------------------"
	Escribir  "Precio original del producto : " PrecioSinIva
	
	Escribir  "Productos adquiridos : " Cantidad
	
	Escribir  "% de descuentos aplicados cupon : " Descuento_cupon
	
	Escribir  "% de descuentos aplicados por cantidad :" Descuento_cantidad
	
	Escribir  "Precio con descuentos aplicados :" PrecioDescuento
	
	Escribir  "Costos total de con  envío :" i
	
	Escribir "---------------------------------------------------------------"
	
	
	

FinAlgoritmo

