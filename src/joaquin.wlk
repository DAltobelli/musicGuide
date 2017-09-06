import Cancion.*

object joaquin {
	var grupo = "pimpinela"
	var habilidad = 20
	
	method cantar(){
		if(grupo != null){
			self.cantarEnGrupo()
		}
	}
	
	method cantarEnGrupo() {
		self.aumentarHabilidad(5)
	}

	method aumentarHabilidad(unaCantidad) {
		habilidad += unaCantidad
	}

	method interpretaBienCancion(unaCancion) {
		return unaCancion.duracionCancion() > 300
	}

	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esUnSolo()){
			return 100
		}else{
			return 50
		}
	}
	
	method abandonarGrupo(){
		grupo = null
	}
}