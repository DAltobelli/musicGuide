import Presentacion.*

object luisAlberto {
	var guitarraActual

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

	method costoPresentacion(aniomes) {
		if (aniomes.fecha() < 201709) {
			return 1000 }
		else {
			return 1200
		}
	}
}


