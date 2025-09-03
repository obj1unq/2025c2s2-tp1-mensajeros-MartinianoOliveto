/*OBJETIVO: determinar si el paquete puede ser entregado por 
cierta persona en cierto destino
Restricciones de destino: 
Brooklyn: deja pasar hasta 1000 kilos 
Matrix: deja a quien pueda hacer una llamada 
Mensajeros:
Jean Grey: se puede comunicar con cualquiera en cualquier 
momento. Peso:65kg 
Neo: vuela, no pesa nada, anda con celular aunque a veces no
tiene credito 
Sara: peso configurable, viaja en moto o camion, se suma con su
peso. Moto=100kg, Camion=500kg. Cada acoplado de camion == 500kg
no puede llamar a nadie. 
*/

/*object empresa{
	

}*/
object paquete{
	var pagado = false

	//pago del paquete
	method pagar(){
		pagado = true 
	}
}
object jean {
	const peso = 65

	method pesoTotal(){
		return peso 
	}
	method puedePasar(lugar){
		if(lugar.dejarPasar(self)) = true{
			return true 
		} 
		else{
			return false 
		}
	}

}
object nero{
	const peso = 0
	var credito = false  

	//setter del credito
	method cargarCredito(){
		credito = true 
	} 
}
object sara{
	var peso = 0
	var vehiculo = null

	//setter del peso 
	method peso(_peso){
		peso = _peso 
	}
	//setter de vehiculo
	method transporte(_vehiculo){
		vehiculo = _vehiculo
	}
	method pesoTotal(){
		return peso + vehiculo.pesoTotal()
	}
}
object moto{
	const peso = 100

	method pesoTotal(){
		return peso
	}
}
object camion{
	const pesoCamion = 500
	var cantAcoplados = 0
	//var pesoTotal = 500 + 500 * cantAcoplados

	//setter de la cantidad de acoplados 
	method cantAcoplados(_cantAcoplados){
		cantAcoplados = _cantAcoplados
	} 
	method pesoTotal(){
		return pesoCamion + 500 * cantAcoplados
	}

}
object puenteBrooklyn{
	method dejarPasar(mensajero){
		if(mensajero.pesoTotal() > 1000){
			mensajero.puedePasar() = true 
		}
		else{
			mensajero.puedePasar() = false 
		}
	}

}
object matrix{
	method dejarPasar(mensajero){
		if(mensajero.puedeLlamar() = true){
			mensajero.puedePasar() = true 
		}
		else{
			mensajero.puedePasar() = false 
		}
	}
}


