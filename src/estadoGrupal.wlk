object tieneGrupo{
	method habilidad(habilidadGrupal,habilidadIndividual){
		return habilidadGrupal + habilidadIndividual
	}
}
object noTieneGrupo{
	method habilidad(habilidadGrupal,habilidadIndividual){
		return habilidadIndividual
	}
}