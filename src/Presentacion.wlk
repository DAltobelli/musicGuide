import lugares.*
import Cancion.*
import Errores.*
import Album.*
import Musico.*

class Presentacion {
	var fecha
	var lugar
	var cantantes = #{ }

	constructor(unDia, unMes, unAnio, unLugar, unosCantantes) {
		fecha = new Date(unDia,unMes,unAnio)
		lugar = unLugar
		cantantes = unosCantantes
	}

	method agregarCantante(unCantante) {
		cantantes.add(unCantante)
	}
	method esLugarConcurrido(){
		return lugar.capacidad(fecha) > 5000
	}
	
	method costo(){
		return cantantes.sum({unCantante => unCantante.costoPresentacion(self)})
	}
	
	method esUnSolo(){
		return cantantes.size() == 1
	}
	
	method fecha() = fecha
	
	method antesDe(unaFecha){
		return fecha<unaFecha
	}
}
object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	var habilidadNecesaria=70
	var cancionNecesaria= new  Cancion("Canción de Alicia en el país",510,"Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.")
	var cantidadDeTemasNecesarios=1
	
	override method agregarCantante(unCantante){
		try{
			unCantante.tieneHabilidadSuficiente(habilidadNecesaria)
			unCantante.tocaBienLaCancionNecesaria(cancionNecesaria)
			unCantante.tieneNCanciones(cantidadDeTemasNecesarios)
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

