import Presentacion.*
import lugares.*
import Cancion.*
import Errores.*
import Album.*
import Musico.*
import Restriccion.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	const aliciaEnElPais= new  Cancion("Canción de Alicia en el país",510,"Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.")
	var restricciones = 	#{new Restriccion({unCantante=>unCantante.habilidadMayorA(70)},"Tener habilidad mayor a 70"),
							new Restriccion({unCantante=>unCantante.interpretaBienCancion(aliciaEnElPais)},"Tocar bien alicia en el pais"),
							new Restriccion({unCantante=>unCantante.tieneAlgunaCancion()},"Tener al menos una cancion")}
	
	method agregarRestriccion(unaRestriccion){
		restricciones.add(unaRestriccion)
	}
	method quitarRestriccion(unaRestriccion){
		restricciones.remove(unaRestriccion)
	}
	method verificarRestricciones(unCantante){
		return restricciones.forEach{unaRestriccion=>unaRestriccion.verificar(unCantante)}
	}
	
	override method agregarCantante(unCantante){
			self.verificarRestricciones(unCantante)
			super(unCantante)
	}
}

