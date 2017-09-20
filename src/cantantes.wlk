import Cancion.*
import guitarras.*


class MusicoDeGrupo{
	var tieneGrupo = true
	var habilidadGrupal
	var habilidad
	
	constructor(unaHabilidad,unaHabilidadGrupal){
		habilidad = unaHabilidad
		habilidadGrupal = unaHabilidadGrupal
	}
	
	method habilidad(){
		if(tieneGrupo){
			return habilidad + habilidadGrupal
		}
		else{
			return habilidad
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

class VocalistaPopular {
	var tieneGrupo = true
	var habilidad
	var palabraMagica
	
	constructor(unaHabilidad,unaPalabra){
		habilidad = unaHabilidad
		palabraMagica = unaPalabra
	}
	
	method habilidad(){
		if(tieneGrupo){
			return habilidad - 20
		}
		else{
			return habilidad
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

object luisAlberto {
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