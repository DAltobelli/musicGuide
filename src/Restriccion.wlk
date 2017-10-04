class Restriccion{
	var condicion
	var descripcion
	constructor(unaCondicion,unaDescripcion){
		condicion = unaCondicion
		descripcion = unaDescripcion
	}
	
	method verificar(unMusico){
		if(!condicion.apply(unMusico))
			self.error("No es aceptado por pdpalooza, ya que no cumple: " + descripcion)
	}
}