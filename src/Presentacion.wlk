import cantantes.*
import lugares.*
import Cancion.*

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
}