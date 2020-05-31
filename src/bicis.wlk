import accesorios.*

class Bicicleta {
	var property rod
	var property largo=0
	var property marcas=[]
	var altura=0
	var carga=0
	var peso=0
	var velcrucero=0
	var accesorios=[]
	
	method contiene(acc){
		accesorios.add(acc)
	}
	method mostrarAccesorios(){
		return accesorios
	}
	
	method altura(){
		altura+=rod*2.5+15
		return altura
	}
	
	method velCru(){
		if(largo>120){
			 velcrucero+=rod+6
			 return velcrucero
		}
		velcrucero+=rod+2
		return velcrucero
	}
	method carga(){
		 carga+=accesorios.sum({cosa=>cosa.carga()})
		 return carga
	}
	method peso(){
		peso= rod/2
		peso+= accesorios.sum({cosa=>cosa.peso()})
		return peso
	}
	method tieneLuz(){
		
		return accesorios.any({cosa=>cosa.esLuminoso()})
		
	}
	method accLivianos(){
		return accesorios.count({cosa=>cosa.peso()<1})
	}
	
}


object olmo{
	
}
object legnano{
	
}