import Cancion.*




//-----cobrar------

class Costo{
	var costoRegular
	constructor (unCosto){
		costoRegular=unCosto
	}
}

class TocaSolo inherits Costo{
	constructor (unCosto)= super(unCosto){}
	method costoPresentacion(unaPresentacion){
		if(unaPresentacion.esUnSolo())
			return costoRegular
		
		else return costoRegular/2
	}
}
class PorCapacidad inherits Costo{
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
class ExpectativaInflacionaria inherits Costo{
	var fecha
	var inflacion
	constructor (costo,unPorcentajeInflacion,unaFecha)=super(costo){
		inflacion=unPorcentajeInflacion
		fecha= unaFecha
	}
	method costoPresentacion(unaPresentacion){
		if (unaPresentacion.antesDe(fecha))
			return costoRegular
		else
			return costoRegular + costoRegular*inflacion/100
	}
	
}


//----interpretarSegun----
class Palabrero{
	var palabra
	constructor (unaPalabra){
		palabra=unaPalabra
	}
	method interpretaBien(unaCancion){
		return unaCancion.contienePalabra(palabra)
	}
}
class Larguero{
	var tiempo
	constructor (unTiempo){
		tiempo=unTiempo
	}
	method interpretaBien(unaCancion){
		return unaCancion.duraMasDe(tiempo)
	}
}
class Imparero{
	method interpretaBien(unaCancion){
		return unaCancion.esImpar()
	}
}