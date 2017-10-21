import lugares.*
import Cancion.*
import Errores.*
import Album.*
import Musico.*

class Presentacion {
	var fecha
	var lugar
	var cantantes = #{ }

	constructor(unaFecha, unLugar, unosCantantes) {
		fecha = unaFecha
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
		return (cantantes.size() == 1) && !self.tocanBandas()
	}
	
	method tocanBandas(){
		return cantantes.any{unCantante=>unCantante.esUnaBanda()}
	}
	
	method fecha() = fecha
	
	method antesDe(unaFecha){
		return fecha<unaFecha
	}
	method luegoDe(unaFecha){
		return fecha>unaFecha
	}
	method tocaMusico(unMusico){
		return cantantes.contains(unMusico)
	}
	method entranMasDe(unaCantidad){
		return lugar.capacidad(fecha)>unaCantidad
	}
	method magia(){
		return cantantes.sum({unCantante=>unCantante.habilidad()})
	}
}