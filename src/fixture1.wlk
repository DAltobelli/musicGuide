import Cancion.*
import cantantes.*
import guitarras.*
import lugares.*
import Presentacion.*

object fixture1 {

	method todosDejanGrupo() {
		joaquin.abandonarGrupo()
		lucia.abandonarGrupo()
	}
	method lunaPark20_04_2017(){
		return new Presentacion(20,04,2017,lunaPark,#{luisAlberto,lucia,joaquin})
	}
	
	method trastienda15_11_2017_solo(){
		return new Presentacion(15,11,2017,laTrastienda,#{joaquin})
	}
	
	method trastienda15_11_2017(){
		return new Presentacion(15,11,2017,laTrastienda,#{luisAlberto,lucia,joaquin})
	}
	
}