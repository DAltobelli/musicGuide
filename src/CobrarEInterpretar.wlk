import Cancion.*




//-----cobrar------

class Costo{
	var costoRegular
	constructor (unCosto){
		costoRegular=unCosto
	}
}

class CuantosSePresentan inherits Costo{
	constructor (unCosto)= super(unCosto){}
	method costoPresentacion(unaPresentacion){
		if(unaPresentacion.esUnSolo())
			return costoRegular
		
		else return costoRegular/2
	}
}
class CapacidadDelLugar inherits Costo{
	var cantidadGente
	constructor (unCosto,unaGente)=super(unCosto){
		cantidadGente=unaGente
	}
	method costoPresentacion(unaPresentacion){
		if(unaPresentacion.entranMasDe(cantidadGente))
			return costoRegular
		else
			return costoRegular-100
	}
}
class Fecha inherits Costo{
	var fecha
	var inflacion
	constructor (costo,unaInflacion,dia,mes,anio)=super(costo){
		inflacion=unaInflacion
		fecha= new Date(dia,mes,anio)
	}
	method costoPresentacion(unaPresentacion){
		if (unaPresentacion.luegoDe(fecha))
			return costoRegular
		else
			return costoRegular*inflacion
	}
	
}


//----interpretarSegun----
class Palabras {
var palabra
	constructor (unaPalabra){
		palabra=unaPalabra
	}
	method interpretaBien(unaCancion){
		return unaCancion.contienePalabra(palabra)
	}
}
class Duracion {
var tiempo
	constructor (unTiempo){
		tiempo=unTiempo
	}
	method interpretaBien(unaCancion){
		return unaCancion.duraMasDe(tiempo)
	}
}
object imparidad{
	method interpretaBien(unaCancion){
		return unaCancion.esImpar()
	}
}