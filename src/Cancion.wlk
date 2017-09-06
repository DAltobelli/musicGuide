
class Cancion {
	var nombre
	var duracion
	var letra

	constructor(unNombre, unaDuracion, letraCancion) {
		nombre = unNombre
		duracion = unaDuracion
		letra = letraCancion
	}

	method letraCancion() = letra
	method duracionCancion() = duracion
	
	method contienePalabra(unaPalabra){
		return letra.contains(unaPalabra)
	}
}