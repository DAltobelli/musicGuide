
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
	constructor(unaCancion) = super(unaCancion.nombre(), unaCancion.duracion()*3, "mueve tu cuelpo baby "+unaCancion.letra()+" yeah oh yeah"){
	}
}
	
class Mashup inherits Cancion{
	constructor(unasCanciones,unaLetra)=super(" ",unasCanciones.max{unaCancion=>unaCancion.duracion()}.duracion(),unaLetra){
		self.generarTitulo(unasCanciones)
	}
	
	method generarTitulo(unasCanciones){
		nombre = unasCanciones.fold("",{letraMashup,unaCancion=>letraMashup+" "+unaCancion.letra()})
	}
}

object aliciaEnElPais inherits Cancion("Canci�n de Alicia en el pa�s",510,"Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir, vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acab� ese juego que te hac�a feliz."){
	
}