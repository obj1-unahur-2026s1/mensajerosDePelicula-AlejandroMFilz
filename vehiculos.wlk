object bicicleta {
    method peso() = 5
}

object camion {
    var property acoplados = 0
    method peso() {
        return acoplados * 500
    }
}