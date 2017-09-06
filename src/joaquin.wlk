import Cancion.*

object joaquin {

var grupo = "pimpinela"
var habilidad= 20
var costoPresentacion=100

method tocarEnGrupo(){
	self.aumentarHabilidad(5)
}

method aumentarHabilidad(unaCantidad){
	habilidad += unaCantidad
}

method interpretaBienCancion(unaCancion){
	return unaCancion.duracionCancion()>300
}

method costoPresentacion(unaCantidad){
	if(grupo != null){
		 return costoPresentacion
		}
	else {
		costoPresentacion -=50
		return costoPresentacion 
		}
}

}
	
	
	



