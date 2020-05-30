import bicis.*
import accesorios.*


object deposito {
	var bicicletas=[]
	var bicisRap=[]
	var marcas=#{}
	var marcaRap=[]
	var cargTot170cm=[]
	var bicisSinAcc=[]
	method agregarBici(bici){
		bicicletas.add(bici)
	}
	method bicisRapidas(){
		bicisRap+=bicicletas.filter({cosa=>cosa.velCru()>25})
		 return bicisRap.map({cosa=>cosa.rod()})
	}
			 
		 
	
	method marca(){
		
		marcas+= bicicletas.map({cosa=>cosa.marcas()}) 
		
		return marcas
		
	}
	
	method esNocturno(){
	return 	bicicletas.all({cosa=>cosa.tieneLuz()})
	}
	method puedeLlevarCarga(kg){
		return bicicletas.any({cosa=>cosa.carga()>kg})
	}
	
	
	method biciMasRapida(){
		//marcaRap+= bicicletas.map
		return bicicletas.max({cosa=>cosa.velCru()}).marcas()
		
	}
	method cargaTotBicisLargas(){
		cargTot170cm+= bicicletas.filter({cosa=>cosa.largo()>170})
		return cargTot170cm.sum({cosa=>cosa.carga()})
	}
	
	method bicisSinAcc(){
		bicisSinAcc+= bicicletas.map({cosa=>cosa.accesorios()})
		return bicisSinAcc.count()
	}
}
