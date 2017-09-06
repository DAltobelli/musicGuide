import Cancion.*
object lucia {
	var grupo = "pimpinela"
	var habilidad = 70
	var costoPresentacion = 500

	method interpretaBienCancion(unaCancion) {
		return unaCancion.contienePalabra("familia")
	}
	
	method cantarEnGrupo(){
		self.disminuirHabilidad(20)
	}
	
	method costoPresentacion(cantidadEspectadores) {
		if (cantidadEspectadores > 5000) {
			return costoPresentacion
		}
		else {
			costoPresentacion -= 100 return costoPresentacion
		}
	}
	
	method disminuirHabilidad(unaCantidad){
		habilidad -= unaCantidad
	}
}
	

