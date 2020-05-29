import bicis.*
import accesorios.*


object deposito {
	var bicicletas=[]
	var bicisRap=[]
	
	method agregarBici(bici){
		bicicletas.add(bici)
	}
	method bicisRapidas(){
		bicisRap+=bicicletas.filter({cosa=>cosa.velCru()>25})
		 return bicisRap.map({cosa=>cosa.mostrarRod()})
	}
			 
		 
	}
	method marca(){
		return bicicletas.find({cosa=>cosa.mostrarMarca()})
	}
	
}
