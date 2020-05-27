object farolito {
	const peso=0.5
	const carga=0
	const luz=true
	method peso(){
		return peso
	}
	method carga(){
		return carga
	}
	method esLuminoso(){
		return luz
	}
}

object canasto {
	var vol=0.5
	var carga=0
	const luz=false
	var peso=0
	method agregarVol(setVol){
		vol=setVol
	}
	method volumen(){
		return vol
	}
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
	const luz=true
	var largo=0
	var ojo=true
	
	method agregarLargo(setLargo){
		largo=setLargo
	}
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
