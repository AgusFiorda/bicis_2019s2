import accesorios.*

class Bicicleta {
	var rod=0
	var cm=0
	var marca=""
	var altura=0
	var carga=0
	var peso=0
	var velcrucero=0
	var accesorios=[]
	
	method contiene(acc){
		accesorios.add(acc)
	}
	method rodado(setRodado){
		rod=setRodado
	}
	method centimetros(setCm){
		cm=setCm
	}
	method marca(setMarca){
		marca=setMarca
	}
	method altura(){
		altura+=rod*2.5+15
		return altura
	}
	method mostrarRod(){
		return rod
	}
	
	method mostrarMarca(){
		return marca
	}
	method velCru(){
		if(cm>120){
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