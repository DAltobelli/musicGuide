import Cancion.*
import guitarras.*
import Album.*

class Musico{
	var albumes = #{}
	var tieneGrupo = true
	
	method albumes() = albumes
	method agregarAlbum(unAlbum){
		albumes.add(unAlbum)
	}
	method abandonarGrupo(){
		tieneGrupo = false
	}
	method tieneGrupo(){
		return tieneGrupo
	}
	
	method esMinimalista(){
		return albumes.all({album=>album.esMinimalista()})
	}
	method cancionesCon(unaPalabra){
		return albumes.flatMap{unAlbum=>unAlbum.cancionesCon(unaPalabra)}
	}
	method duracionObra(){
		return albumes.sum{unAlbum=>unAlbum.duracion()}
	}
	method laPego(){
		return albumes.all({unAlbum=>unAlbum.tuvoBuenasVentas()}) 
	}
}

class MusicoDeGrupo inherits Musico{
	var habilidadGrupal
	var habilidadBase
	
	constructor(unaHabilidadBase,unaHabilidadGrupal){
		habilidadBase = unaHabilidadBase
		habilidadGrupal = unaHabilidadGrupal
	}
	
	method habilidad(){
		if(tieneGrupo){
			return habilidadBase + habilidadGrupal
		}
		else{
			return habilidadBase
		}
	}
	

	method interpretaBienCancion(unaCancion) {
		return unaCancion.duracion() > 300
	}

	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esUnSolo()){
			return 100
		}else{
			return 50
		}
	}
}

class VocalistaPopular inherits Musico{
	var habilidadBase
	var palabraMagica
	
	constructor(unaHabilidadBase,unaPalabra){
		habilidadBase = unaHabilidadBase
		palabraMagica = unaPalabra
	}
	
	method habilidad(){
		if(tieneGrupo){
			return habilidadBase - 20
		}
		else{
			return habilidadBase
		}
	}
	
	method interpretaBienCancion(unaCancion) {
		return unaCancion.contienePalabra(palabraMagica)
	}
	
	
	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
}

object luisAlberto inherits Musico{
	var guitarraActual = fender

	method guitarraActual(unaGuitarra) {
		guitarraActual = unaGuitarra
	}

	method valorGuitarra() {
		return guitarraActual.valor()
	}

	method habilidad() {
		return 100.min(8 * self.valorGuitarra())
	}

	method interpretaBienCancion(unaCancion) {
		return true
	}

	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.fecha() < new Date(01,09,2017)){
			return 1000
		}else{
			return 1200
		}
	}
}