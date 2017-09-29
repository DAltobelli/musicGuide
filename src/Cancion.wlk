
class Cancion {
	var nombre
	var duracion
	var letra

	constructor(unNombre, unaDuracion, letraCancion) {
		nombre = unNombre
		duracion = unaDuracion
		letra = letraCancion
	}

	method duracion()= duracion
	method nombre()= nombre
	method letra()=letra
	
	method contienePalabra(unaPalabra){
		return letra.toUpperCase().contains(unaPalabra.toUpperCase())
	}
	
	method esCorta(){
		return duracion<180
	}
	method largoLetra(){
		return letra.size()
	}
	
	method duraMasDe(unaDuracion){
		return duracion>unaDuracion
	}
}

class Remix inherits Cancion{
	
	constructor(unNombre, unaDuracion, letraCancion) 
	= super(unNombre, unaDuracion, letraCancion){
		duracion = unaDuracion*3
		letra = "mueve tu cuelpo baby" + letraCancion +"yeah oh yeah"
	}
}
	
class Mashups{
var nombre
var duracion
var letra
var canciones=#{}

constructor(letraMashup,listaCanciones){
	letra=letraMashup
	canciones=listaCanciones
}

method duracion(){
 	return canciones.max({unaCancion=> unaCancion.duracion()})
 }
method nombre(){
	return canciones.fold("",{unaCancion=> unaCancion.nombre()+ " "})
}
method letra()=letra

method contienePalabra(unaPalabra){
	return letra.toUpperCase().contains(unaPalabra.toUpperCase())
	}
	
method esCorta(){
	return self.duracion()<180
}
method largoLetra(){
	return letra.size()
}
	
method duraMasDe(unaDuracion){
	return self.duracion()>unaDuracion
	}

	
}