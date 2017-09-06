import Cancion.*

object joaquin {
	var grupo = "pimpinela"
	var habilidad = 20

	method cantarEnGrupo() {
		self.aumentarHabilidad(5)
	}

	method aumentarHabilidad(unaCantidad) {
		habilidad += unaCantidad
	}

	method interpretaBienCancion(unaCancion) {
		return unaCancion.duracionCancion() > 300
	}

	method costoPresentacion(unaCantidad) {
		if (grupo != null) {
			return 100
		}
		else {
			return 50
		}
	}
}