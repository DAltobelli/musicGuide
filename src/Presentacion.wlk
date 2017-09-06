
class Presentacion {
	var fecha
	var lugar
	var cantantes = #{ }
	var capacidad

	constructor(unaFecha, unLugar, listaCantantes, unaCapacidad) {
		fecha = unaFecha
		lugar = unLugar
		capacidad = unaCapacidad
		cantantes = listaCantantes.forEach({ cantante => self.agregarCantante(cantante) })
	}

	method agregarCantante(unCantante) {
		cantantes.add(unCantante)
	}
}