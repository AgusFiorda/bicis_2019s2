object farolito {
	const peso=0.5
	const carga=0
	
	method peso(){
		return peso
	}
	method carga(){
		return carga
	}
	method esLuminoso(){
		return true
	}
}

object canasto {
	var property vol
	var carga=0
	const luz=false
	var peso=0

	method peso(){
		peso=vol/10
		return peso
	}
	method carga(){
		carga=vol*2
		return carga
	}
	method esLuminoso(){
		return luz
	}

}

object morraldebici {
	const peso=1.2
	var carga=0
	var property largo=0
	var ojo=true
	
	method peso(){
		return peso
	}
	method carga(){
		carga=largo/3
		return carga
	}
	method tieneOjoDeGato(){
		ojo=true
	}
	method noTieneOjoDeGato(){
		ojo=false
	}
	method esLuminoso(){
		if(ojo){
			return ojo
		}return ojo
	}
}
/*
 para agregar un nuevo tipo de accesorio habria que crear 
 los objetos que se deseen agregar con sus caracteristicas.
 
el contrato bici no cambia ya que sabe reaccionar a los diferentes 
accesorios independientemente de cual sea.
 
 */
