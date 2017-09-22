
class Cancion {
	var nombre
	var duracion
	var letra

	constructor(unNombre, unaDuracion, letraCancion) {
		nombre = unNombre
		duracion = unaDuracion
		letra = letraCancion
	}

	method duracion() = duracion
	
	method contienePalabra(unaPalabra){
		return letra.toUpperCase().contains(unaPalabra.toUpperCase())
	}
	
	method esCorta(){
		return duracion<180
	}
	method largoLetra(){
		return letra.size()
	}
}