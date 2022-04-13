import cosas.*
import armas.*

object luisa {
	var jugadorActivo
	method jugadorActivo(unJugador) {jugadorActivo = unJugador}
	method jugadorActivo() = jugadorActivo
}


object floki {
	var arma = ballesta
	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.nivelDePotencia())
			arma.usar()
		}

	}
	method cambiarArma(unArma) {
		arma = unArma
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElemento
	method encontrar(elemento) {
		valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElemento = elemento // ... acá hay que agregar una línea ...
	}
	method valorRecolectado() = valorRecolectado
	method esFeliz() = valorRecolectado >=50 or ultimoElemento.altura() >= 10
	
}

