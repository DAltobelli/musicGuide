import Presentacion.*
import lugares.*
import Cancion.*
import Errores.*
import Album.*
import Musico.*
import Restriccion.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	var habilidadNecesaria=70
	var cancionNecesaria= new  Cancion("Canci�n de Alicia en el pa�s",510,"Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir, vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acab� ese juego que te hac�a feliz.")
	var cantidadDeTemasNecesarios=1
	var restricciones = 	#{new Restriccion({unCantante=>unCantante.tieneHabilidadSuficiente(habilidadNecesaria)}),
							new Restriccion({unCantante=>unCantante.tocaBienLaCancionNecesaria(cancionNecesaria)}),
							new Restriccion({unCantante=>unCantante.tieneNCanciones(cantidadDeTemasNecesarios)})}
	
	method agregarRestriccion(unaRestriccion){
		restricciones.add(unaRestriccion)
	}
	method quitarRestriccion(unaRestriccion){
		restricciones.remove(unaRestriccion)
	}
	method cumpleRestricciones(unCantante){
		return restricciones.all{unaRestriccion=>unaRestriccion.esCumplidaPor(unCantante)}
	}
	
	override method agregarCantante(unCantante){
		try{
			self.cumpleRestricciones(unCantante)
			super(unCantante)
		}
		catch e: NoAlcanzaLaHabilidad {
			console.println("Se capturo una excepcion: " + e.getMessage())
		}
		catch e: NoInterpretaBienLaCancion {
			console.println("Se capturo una excepcion: " + e.getMessage())
		}
		catch e: NoCompusoSuficientesCanciones{
			console.println("Se capturo una excepcion: " + e.getMessage())
		}

	}
}

