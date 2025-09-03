
//METODO TOP DOWN 
//DESTINOS
object puenteBrooklyn{
	method dejarPasar(mensajero){
		if(mensajero.pesoTotal() <= 1000){
			 mensajero.entregarPaquete()
		}
		return mensajero.paqueteEntregado()
	}
}
object matrix{
	method dejarPasar(mensajero){
		if(mensajero.puedeComunicarse()){
			mensajero.entregarPaquete()
		}
		return mensajero.paqueteEntregado()
	}
}
//MENSAJEROS 
object jean{
	//puede comunicarse siempre, constante verdadera
	const puedeComunicarse = true 
	//su peso es siempre 65kg 
	const pesoTotal = 65
	//voy a agregar una variable, que verifique que el paquete haya sido entregado
	var paqueteEntregado = false 
	//el mensajero entrega el paquete
	method entregarPaquete(){
		paqueteEntregado = true 
	}

	//getters
	method puedeComunicarse(){
		return puedeComunicarse
	}
	method pesoTotal(){
		return pesoTotal
	}
	method paqueteEntregado(){
		return paqueteEntregado
	}

	//preguntamos al mensajero si puede realizar la entrega (el paquete debe estar pago y este debe ser capaz de llegar a destino)
	//se divide en dos subtareas, una verifica el pago del paquete y otra si llega a destino
	method verificarEntrega(paquete, destino){
		return self.verificarEntrega(paquete) && self.verificarDestino(destino)
	}
	method verificarDestino(destino){
		return destino.dejarPasar(self)
	}
	method verificarEntrega(paquete){
		return paquete.estaPago()
	}
}
object neo{
	//vuela, no pesa nada 
	const pesoTotal = 0 
	//anda con celular, por ende su comunicacion depende de si tiene credito o no; en este caso, empezara sin credito 
	var puedeComunicarse = false 
	var paqueteEntregado = false 

	method entregarPaquete(){
		paqueteEntregado = true 
	}

	//getter 
	method pesoTotal(){
		return pesoTotal
	}
	method puedeComunicarse(){
		return puedeComunicarse
	}
	method paqueteEntregado(){
		return paqueteEntregado
	}
	
	//setter 
	method cargarCredito(){
		puedeComunicarse = true 
	}
	method verificarEntrega(paquete, destino){
		return self.verificarEntrega(paquete) && self.verificarDestino(destino)
	}
	method verificarDestino(destino){
		return destino.dejarPasar(self)
	}
	method verificarEntrega(paquete){
		return paquete.estaPago()
	}
}
object sara{
	//su peso varia, se debe configurar
	var peso = 0
	//viaja en moto o camion, a ese peso se le suma el peso de su vehiculo, se debe configurar en que vehiculo viaja 
	var vehiculo = null
	//sara no puede llamar a nadie, constante 
	const puedeComunicarse = false 

	var paqueteEntregado = false 

	method entregarPaquete(){
		paqueteEntregado = true 
	}
	//setters 
	method peso(kilogramos){
		peso = kilogramos 
	}
	method vehiculo(_vehiculo){
		vehiculo = _vehiculo 
	}
	//getters 
	method puedeComunicarse(){
		return puedeComunicarse
	}
	method paqueteEntregado(){
		return paqueteEntregado
	}
	//calculo del peso total de sara 
	method pesoTotal(){
		return peso + vehiculo.pesoTotal()
	}
	method verificarEntrega(paquete, destino){
		return self.verificarEntrega(paquete) && self.verificarDestino(destino)
	}
	method verificarDestino(destino){
		return destino.dejarPasar(self)
	}
	method verificarEntrega(paquete){
		return paquete.estaPago()
	}
}
object moto{
	//la moto pesa 100kg 
	method pesoTotal(){
		return 100
	}
}
object camion{
	//el camion pesa 500kg, y si tiene acoplados c/u pesa 500kg tambien 
	const pesoBase = 500 
	var cantAcoplados = 0

	//setter acoplados
	method cantAcoplados(cantidad){
		cantAcoplados = cantidad 
	} 
	//peso total del camion 
	method pesoTotal(){
		return pesoBase + 500 * cantAcoplados
	}
}
object paquete{
	//se debe pagar el paquete
	var estaPago = false 

	method pagarPaquete(){
		estaPago = true 
	}
	//getter 
	method estaPago(){
		return estaPago
	}
}









/*object empresa{
	



}*/
/*object paquete{
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
}*/


