import Presentacion.*
import lugares.*
import Cancion.*
import Errores.*
import Album.*
import Musico.*
import Restriccion.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	var restricciones = #{tieneMasDe70DeHabilidad, tocaBienAliciaEnElPais, tieneAlMenosUnaCancion}
	
	method agregarRestriccion(unaRestriccion){
		restricciones.add(unaRestriccion)
	}
	method quitarRestriccion(unaRestriccion){
		restricciones.remove(unaRestriccion)
	}
	method verificarRestricciones(unCantante){
		restricciones.forEach{unaRestriccion=>unaRestriccion.verificar(unCantante)}
	}
	
	override method agregarCantante(unCantante){
			self.verificarRestricciones(unCantante)
			super(unCantante)
	}
}

