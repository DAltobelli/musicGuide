import Presentacion.*

object luisAlberto {
var habilidad
var guitarraActual

method guitarraActual(unaGuitarra){
	guitarraActual = unaGuitarra
}
method habilidad(unaHabilidad)={
	habilidad=unaHabilidad
}
method valorGuitarra(){
	return guitarraActual.valor()
}

method interpretaBienCancion(unaCancion){
	return true
}

method costoPresentacion (aniomes){
	if(aniomes.fecha()<201709){
		return 1000}
	else{
		return 1200
	}
}
	

	}


