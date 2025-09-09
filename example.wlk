
//DESTINOS
object puenteBrooklyn{

	method puedePasar(mensajero){
		return mensajero.pesoTotal() <= 1000
	}
}
object matrix{

	method puedePasar(mensajero){
		return mensajero.puedeComunicarse()
	}
}
//MENSAJEROS 
object jean{
	const puedeComunicarse = true 
	const pesoTotal = 65
	
	//getters
	method puedeComunicarse(){
		return puedeComunicarse
	}
	method pesoTotal(){
		return pesoTotal
	}

	method puedeHacerLaEntrega(paquete, destino){
		return paquete.estaPago() && destino.puedePasar(self)
	}
}
object neo{
	const pesoTotal = 0 
	//Neo no tendra credito a menos que cargue 
	var puedeComunicarse = false 
	
	//getter 
	method pesoTotal(){
		return pesoTotal
	}
	method puedeComunicarse(){
		return puedeComunicarse
	}
	
	method cargarCredito(){
		puedeComunicarse = true 
	}
	method puedeHacerLaEntrega(paquete, destino){
		return paquete.estaPago() && destino.puedePasar(self)
	}
}
object sara{
	//su peso varia, se debe configurar
	var peso = 0
	//viaja en moto o camion, a ese peso se le suma el peso de su vehiculo, se debe configurar en que vehiculo viaja 
	var vehiculo = null
	//sara no puede llamar a nadie, constante 
	const puedeComunicarse = false 
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
	//calculo del peso total de sara 
	method pesoTotal(){
		return peso + vehiculo.pesoTotal()
	}
	
	method puedeHacerLaEntrega(paquete, destino){
		return paquete.estaPago() && destino.puedePasar(self)
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












