
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
}