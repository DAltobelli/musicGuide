import Cancion.*
import guitarras.*
import Album.*
import estadoGrupal.*

class Musico{
	var albumes = #{}
	var grupo = tieneGrupo
	
	method albumes() = albumes
	method agregarAlbum(unAlbum){
		albumes.add(unAlbum)
	}
	method abandonarGrupo(){
		grupo = noTieneGrupo
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
	method esCancionSuya(cancion){
		return albumes.any{album=>album.canciones().contains(cancion)}
	}
	method interpretaBienCancion(unaCancion){
		return (self.esCancionSuya(unaCancion)||self.habilidad()>60)
	}
	method habilidad()
}

class MusicoDeGrupo inherits Musico{
	var habilidadGrupal
	var habilidadBase
	
	constructor(unaHabilidadBase,unaHabilidadGrupal){
		habilidadBase = unaHabilidadBase
		habilidadGrupal = unaHabilidadGrupal
	}
	
	override method habilidad(){
		return grupo.habilidad(habilidadGrupal,habilidadBase)
	}
	

	override method interpretaBienCancion(unaCancion) {
		return (unaCancion.duraMasDe(300)|| super(unaCancion))
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
	
	override method habilidad(){
		return grupo.habilidad(-20,habilidadBase)
	}
	
	override method interpretaBienCancion(unaCancion) {
		return (unaCancion.contienePalabra(palabraMagica)|| super(unaCancion))
	}
	
	
	method costoPresentacion(unaPresentacion) {
		if(unaPresentacion.esLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
}
