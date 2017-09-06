object lunaPark{
	method capacidad(unaFecha){
		return 9_290
	}
}
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