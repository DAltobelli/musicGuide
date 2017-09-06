import Cancion.*
object lucia {
	
var grupo = "pimpinela"
var habilidad= 70
var costoPresentacion=500
method habilidad(){
	if(grupo != null){
		 habilidad-=20
		 return habilidad
		}
	else {
		return habilidad
		}
}
method interpretaBienCancion(unaCancion){
	return (unaCancion.letra().contains("familia")||unaCancion.letra().contains("FAMILIA"))
}
method costoPresentacion(cantidadEspectadores){
	if(cantidadEspectadores>5000){
		 return costoPresentacion
		}
	else {
		costoPresentacion -=100
		return costoPresentacion 
		}
}

}
	

