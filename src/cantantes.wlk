import Cancion.*
import guitarras.*

class Musico{
	var albumes = #{}
	
	method albumes() = albumes
	method agregarAlbum(unAlbum){
		albumes.add(unAlbum)
	}
}

class MusicoDeGrupo inherits Musico{
	var tieneGrupo = true
	var habilidadGrupal
	var habilidadBase
	
	constructor(unaHabilidadBase,unaHabilidadGrupal){
		habilidadBase = unaHabilidadBase
		habilidadGrupal = unaHabilidadGrupal
	}
	
	method habilidad(){
		if(tieneGrupo){
			return habilidadBase + habilidadGrupal
		}
		else{
			return habilidadBase
		}
	}
	

	method interpretaBienCancion(unaCancion) {
		return unaCancion.duracion() > 300
	}

	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esUnSolo()){
			return 100
		}else{
			return 50
		}
	}
	
	method abandonarGrupo(){
		tieneGrupo = false
	}
}

class VocalistaPopular inherits Musico{
	var tieneGrupo = true
	var habilidadBase
	var palabraMagica
	
	constructor(unaHabilidadBase,unaPalabra){
		habilidadBase = unaHabilidadBase
		palabraMagica = unaPalabra
	}
	
	method habilidad(){
		if(tieneGrupo){
			return habilidadBase - 20
		}
		else{
			return habilidadBase
		}
	}
	
	method interpretaBienCancion(unaCancion) {
		return unaCancion.contienePalabra(palabraMagica)
	}
	
	
	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
	method abandonarGrupo(){
		tieneGrupo = false
	}
}

object luisAlberto inherits Musico{
	var guitarraActual = fender

	method guitarraActual(unaGuitarra) {
		guitarraActual = unaGuitarra
	}

	method valorGuitarra() {
		return guitarraActual.valor()
	}

	method habilidad() {
		return 100.min(8 * self.valorGuitarra())
	}

	method interpretaBienCancion(unaCancion) {
		return true
	}

	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.fecha() < new Date(01,09,2017)){
			return 1000
		}else{
			return 1200
		}
	}
}