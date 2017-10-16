import Musico.*
import guitarras.*
import estadoGrupal.*
import CobrarEInterpretar.*

object luisAlberto inherits Musico(noTieneGrupo,new ExpectativaInflacionaria(1000,20,new Date(01,09,2017)),null){
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
}