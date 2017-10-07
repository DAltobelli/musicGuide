
class Criterio{
	var criterio
	constructor(unCriterio){
		criterio = unCriterio
	}
	method mayor(canciones){
		return canciones.max(criterio)
	}
}

object criterioDuracion inherits Criterio({unaCancion=>unaCancion.duracion()}){
	
}
object criterioLargoLetra inherits Criterio({unaCancion=>unaCancion.largoLetra()}){
	
}
object criterioTitulo inherits Criterio({unaCancion=>unaCancion.nombre()}){
	
}