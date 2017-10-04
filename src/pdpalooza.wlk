import Presentacion.*
import lugares.*
import Cancion.*
import Errores.*
import Album.*
import Musico.*
import Restriccion.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	const aliciaEnElPais= new  Cancion("Canci�n de Alicia en el pa�s",510,"Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir, vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acab� ese juego que te hac�a feliz.")
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

