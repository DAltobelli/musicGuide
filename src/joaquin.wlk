import Cancion.*

object joaquin {

var grupo = "pimpinela"
var habilidad= 20
var costoPresentacion=100


method habilidad(){
	if(grupo != null){
		 habilidad+=5
		 return habilidad
		}
	else {
		return habilidad
		}
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
	
	
	



