import criterios.* 

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
	
	method contieneCancion(unaCancion){
		return canciones.contains(unaCancion)
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
		return self.cancionMayorSegun(criterioLargoLetra)
	}
	method tuvoBuenasVentas(){
		return unidadesVendidas>unidadesALaVenta*(0.75)
	}
	method cancionMayorSegun(criterio){
		return criterio.mayor(canciones)
	}
	method canciones() {
		return canciones
	}
	method tieneAlgunaCancion(){
		return !canciones.isEmpty()
	}
}
