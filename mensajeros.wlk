import vehiculos.*

object roberto {
    const peso = 90
    var property vehiculo = bicicleta

    method puedeHacerLlamada() = false
    method peso() {
        return peso + vehiculo.peso()
    }
    method puedeLlevarPaquete(paquete) {
        return paquete.pagado() && paquete.destino().dejaPasar(self)
    }
}

object chuck {
    method peso() = 80
    method puedeHacerLlamada() = true
    method puedeLlevarPaquete(paquete) {
        return paquete.pagado() && paquete.destino().dejaPasar(self)
    }
}

object neo {
    var property tieneCredito = true

    method peso() = 0
    method puedeHacerLlamada() {
        return tieneCredito
    }
    method puedeLlevarPaquete(paquete) {
        return paquete.pagado() && paquete.destino().dejaPasar(self)
    }
}