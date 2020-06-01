import bicis.*
import accesorios.*


object deposito {
	var bicicletas=[]
	var bicisRap=[]
	var marcas=#{}
	var largo=0
	var cargTot170cm=[]
	var aux=false
	var parDeBicis=[]
	var ultbici=[]
	var primeraLuz=[]
	var bicisConLuz=[]
	
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
			if(largo==0){
				parDeBicis.add(b1)
				parDeBicis.add(b2)
				aux=true 
				return true
			}
			if(largo<0){ if((largo*-1)<10){
				parDeBicis.add(b1)
				parDeBicis.add(b2)
				aux=true
				return true
			} return false
			}
			
			if( largo<=10 ){
				parDeBicis.add(b1)
				parDeBicis.add(b2)
				aux=true
				return true
			}return false
		}
		return false
		}
		return false
		
	
}

	method hayCompanieras(){
		return aux
	}
	
	method parejasCompanieras(){
		if(aux){
			return parDeBicis.size()
			
		}return "No hay parejas compañeras"
	}
	
	method seHizoLaLuz(){
		ultbici.add(bicicletas.last())//
		primeraLuz.add(bicicletas.find({cosa=>cosa.tieneLuz()}))
		primeraLuz.get(0)//el primer elemento que tiene luz
		bicisConLuz += bicicletas.filter({cosa=>cosa.tieneLuz()})
		//return bicisConLuz
		 
		if(primeraLuz.all({cosa=>cosa.tieneLuz()})){
			if(bicisConLuz.all({cosa=>cosa.tieneLuz()})){
				if(ultbici.all({cosa=>cosa.tieneLuz()})){
					return true
				}
			}
			
		}return false

	}

}