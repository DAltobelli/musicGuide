import Musico.*

class Banda {
	var integrantes
	var costoRepresentante
	
	constructor(unosIntegrantes,unCostoRepresentante){
		integrantes = unosIntegrantes
		costoRepresentante = unCostoRepresentante
	}
	
	method esUnaBanda(){
		return true
	}
	method habilidad(){
		integrantes.forEach({unMusico=>unMusico.unirseAGrupo()})
		return integrantes.sum{unIntegrante=>unIntegrante.habilidad()} * 1.1
	}
	method interpretaBienCancion(unaCancion){
		return integrantes.all{unIntegrante=>unIntegrante.interpretaBienCancion(unaCancion)}
	}
	method costoMusicos(unaPresentacion){
		return integrantes.sum{unIntegrante=>unIntegrante.costoPresentacion(unaPresentacion)}
	}
	method costoPresentacion(unaPresentacion){
		return self.costoMusicos(unaPresentacion) + costoRepresentante
	}
}