
class Album {
	var canciones 
	var fechaLanzamiento
	var unidadesALaVenta
	var unidadesVendidas
	
	constructor (unasCanciones,unaFechaLanzamiento,unasUnidadesALaVenta, unasUnidadesVendidas){
		canciones = unasCanciones
		fechaLanzamiento= unaFechaLanzamiento
		unidadesALaVenta=unasUnidadesALaVenta
		unidadesVendidas=unasUnidadesVendidas
	}
	
	method esMinimalista(){
		return canciones.all({cancion=>cancion.esCorta()})
	}
	method cancionesCon(unaPalabra){
		return canciones.filter{unaCancion=>unaCancion.contienePalabra(unaPalabra)}
	}
	method duracion(){
		return canciones.sum{unaCancion=>unaCancion.duracion()}
	}
	method cancionMasLarga(){
		return canciones.max{unaCancion=>unaCancion.largoLetra()}
	}
	method tuvoBuenasVentas(){
		return unidadesVendidas>unidadesALaVenta*(0.75)
	}
	method cancionMayorSegun(criterio){
		return criterio.mayor(canciones)
	}
}

object criterioDuracion{
	method mayor(canciones){
		return canciones.max({unaCancion=>unaCancion.duracion()})
	}
}

object criterioLetra{
	method mayor(canciones){
		return canciones.max({unaCancion=>unaCancion.largoLetra()})
	}
}

object criterioTitulo{
	method mayor(canciones){
		return canciones.max({unaCancion=>unaCancion.nombre()})
	}
}