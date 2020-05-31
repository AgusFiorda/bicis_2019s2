import bicis.*
import accesorios.*


object deposito {
	var bicicletas=[]
	var bicisRap=[]
	var marcas=#{}
	var largo=0
	var cargTot170cm=[]
	
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
		
		return bicicletas.max({cosa=>cosa.velCru()}).marcas()
		
	}
	method cargaTotBicisLargas(){
		cargTot170cm+= bicicletas.filter({cosa=>cosa.largo()>170})
		return cargTot170cm.sum({cosa=>cosa.carga()})
	}
	
	method bicisSinAcc(){
		
		return bicicletas.count({cosa=>cosa.mostrarAccesorios().isEmpty()})
			
		
		
			
	}
	
	method sonCompanieras(b1,b2){
		largo=b1.largo()-b2.largo()
		if(b1!=b2){
		if(b1.marcas()==b2.marcas()){
			if(largo==0){return true}
			if(largo<0){return (largo*-1)<10 }
			return largo<=10
		}return false
		}return false
		
	
}



}