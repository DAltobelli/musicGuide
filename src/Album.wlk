
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
}