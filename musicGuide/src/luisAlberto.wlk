import Presentacion.*

object luisAlberto {
var habilidad
var valorGuitarra

method habilidad(unaHabilidad)={
	habilidad=unaHabilidad
}
method valorGuitarra(unaGuitarra,estado){
	if(unaGuitarra=="Fender"){
		return 10
		}
	else if(unaGuitarra=="Gibson"&& estado=="nueva"){
		 return 15
		 }
		 else if(unaGuitarra=="Gibson"&&estado=="rota"){
		 	return 5
		 }
	else{
		return 0
	}	 
}
method habilidad(unaGuitarra,estado){
	valorGuitarra=self.valorGuitarra(unaGuitarra,estado)*8
	if(valorGuitarra <100){
		return valorGuitarra}
	else{
		return valorGuitarra +(100-valorGuitarra)
	}
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


