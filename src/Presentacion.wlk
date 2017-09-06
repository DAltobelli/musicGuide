
class Presentacion {
	var fecha
	var lugar
	var cantantes = #{ }
	var capacidad

	constructor(unaFecha, unLugar, unosCantantes, unaCapacidad) {
		fecha = unaFecha
		lugar = unLugar
		capacidad = unaCapacidad
		cantantes = unosCantantes
	}

	method agregarCantante(unCantante) {
		cantantes.add(unCantante)
	}
	method esLugarConcurrido(){
		return capacidad > 5000
	}
	
	method costo(){
		return cantantes.sum({unCantante => unCantante.costoPresentacion()})
	}
}