object ballesta {
	var flechas = 10
	method nivelDePotencia() = 4
	method usar() {flechas -= 1}
	method estaCargada() = flechas >= 1
	
}

object jabalina {
	var estaCargada = true
	method nivelDePotencia() = 30
	method usar() {estaCargada = false}
	method estaCargada() = estaCargada
	
}
