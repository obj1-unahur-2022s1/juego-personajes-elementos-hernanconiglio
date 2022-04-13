object castillo {
	var nivelDeDefensa = 150
	method altura() = 20
	method nivelDeDefensa() = nivelDeDefensa
	method recibirAtaque(valor) {
		nivelDeDefensa = 0.max(nivelDeDefensa - valor)
	}
	method valorQueOtorga() = nivelDeDefensa * 0.2
	method recibirTrabajo() {nivelDeDefensa = 200.min(nivelDeDefensa + 20)}
}

object aurora {
	var estaViva = true
	method altura() = 1
	method estaViva() = estaViva
	method recibirAtaque(valor) {
		estaViva = not (valor >= 10)
	}
	method valorQueOtorga() = 15
	method recibirTrabajo() {}
}

object tipa {
	var altura = 8
	method altura() = altura
	method valorQueOtorga() = altura * 2
	method recibirTrabajo() {altura++}
}