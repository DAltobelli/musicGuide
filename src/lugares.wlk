object laTrastienda{
	const capacidadPlantaBaja = 400
	const capacidadPrimerPiso = 300
	method capacidad(unaFecha){
		if(unaFecha.dayOfWeek() == 6){
			return capacidadPlantaBaja + capacidadPrimerPiso
		}else{
			return capacidadPlantaBaja
		}
	}
}

class Lugar{
	var capacidad
	constructor(unaCapacidad){
		capacidad=unaCapacidad
	}
	method capacidad(unaFecha){
		return capacidad
	}
}