import Cancion.*

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

object tieneAlMenosUnaCancion inherits Restriccion({unCantante=>unCantante.tieneAlgunaCancion()},"Tener al menos una cancion"){
}

object tocaBienAliciaEnElPais inherits Restriccion({unCantante=>unCantante.interpretaBienCancion(aliciaEnElPais)},"Tocar bien alicia en el pais"){
	
}
object tieneMasDe70DeHabilidad inherits Restriccion({unCantante=>unCantante.habilidadMayorA(70)},"Tener habilidad mayor a 70"){
	
}