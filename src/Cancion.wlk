
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
}