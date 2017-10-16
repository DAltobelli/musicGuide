import Musico.*
import guitarras.*

object luisAlberto inherits Musico(null,null){
	var guitarraActual = fender

	method guitarraActual(unaGuitarra) {
		guitarraActual = unaGuitarra
	}

	method valorGuitarra() {
		return guitarraActual.valor()
	}

	override method habilidad() {
		return 100.min(8 * self.valorGuitarra())
	}

	override method interpretaBienCancion(unaCancion) {
		return true
	}

	override method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.antesDe(new Date(01,09,2017))){
			return 1000
		}else{
			return 1200
		}
	}
}