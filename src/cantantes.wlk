import Cancion.*
import guitarras.*


object joaquin {
	var tieneGrupo = true
	
	method habilidad(){
		if(tieneGrupo){
			return 25
		}
		else{
			return 20
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

object lucia {
	var tieneGrupo = true
	
	method habilidad(){
		if(tieneGrupo){
			return 50
		}
		else{
			return 70
		}
	}
	
	method interpretaBienCancion(unaCancion) {
		return unaCancion.contienePalabra("familia")
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