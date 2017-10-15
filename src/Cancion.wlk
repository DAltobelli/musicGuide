import criterios.*

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
	method esImpar(){
		return duracion%2==1
	}
}

class Remix inherits Cancion{
	constructor(unaCancion) = super(unaCancion.nombre(), unaCancion.duracion()*3, "mueve tu cuelpo baby "+unaCancion.letra()+" yeah oh yeah"){
	}
}
	
class Mashup inherits Cancion{
	constructor(unasCanciones,unaLetra)=super(" ",0,unaLetra){
		self.generarTitulo(unasCanciones)
		duracion = criterioDuracion.mayor(unasCanciones).duracion()
	}
	
	method generarTitulo(unasCanciones){
		nombre = unasCanciones.fold("",{nombreMashup,unaCancion=>nombreMashup+" "+unaCancion.nombre().trim()}).trim()
	}
}

object aliciaEnElPais inherits Cancion("Cancion de Alicia en el pais",510,"Quien sabe Alicia, este pais no estuvo hecho porque si. Te vas a ir, vas a salir pero te quedas, ¿donde mas vas a ir? Y es que aqui, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabo ese juego que te hacia feliz."){
	
}