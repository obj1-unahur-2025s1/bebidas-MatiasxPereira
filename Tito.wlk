object tito {

    var dosis = 0

    var bebida = null
    method bebida() = bebida

    method peso() {return 70}

    method inerciaBase() = 490

    method consumir(unaDosis, unaBebida) {
        bebida = unaBebida
        dosis = unaDosis
    }

    method velocidad(){
        return bebida.rendimiento(dosis) * self.inerciaBase() / self.peso()
    } 

}

object whisky {
    method rendimiento(dosis) {
        return 0.9 ** dosis
    }
}

object terere {
    method rendimiento(dosis) = 1.max(0.1 * dosis)
}

object cianuro {
    method rendimiento(dosis) = 0 
}
