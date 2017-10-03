class Restriccion{
	var condicion
	constructor(unaCondicion){
		condicion = unaCondicion
	}
	
	method esCumplidaPor(unMusico){
		return condicion.apply(unMusico)
	}
}