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
	
	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esLugarConcuirrido()){
			return 500
		}else{
			return 400
		}
	}
	
	method disminuirHabilidad(unaCantidad){
		habilidad -= unaCantidad
	}
}
	

