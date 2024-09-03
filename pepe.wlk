/// EMPLEADOS
object pepe {
    var bonoPorResultado = null
    var bonoPorPresentismo = null
    var faltas = 0
    var categoria = null

    method sueldo(){
        return self.neto() + bonoPorResultado.bono(self) + bonoPorPresentismo.bono(self)
    }
    


    /// CATEGORIA NETO
    method categoria(_categoria){ //SET CATEGORIA
        categoria = _categoria
    }
    method categoria(){     //GET CATEGORIA
        return categoria
    }

    /// FALTAS 
    method faltas(_faltas){ // CANTIDAD DE FALTAS SETTER
        faltas = _faltas
    }
    method faltas(){        // SABER LA CANTIDAD DE FALTAS GETTER
        return faltas
    }

    // BONOS
    method bonoPorResultado(_bonoPorResultado){ //SET BONO RESULTADO
        bonoPorResultado = _bonoPorResultado
    }
    method bonoPorPresentismo(_bonoPorPresentismo){ // SET BONO PRESENTISMO
        bonoPorPresentismo = _bonoPorPresentismo
    }

    method neto(){      // GET NETO DEPENDIENDO DE CATEGORIA
        return categoria.neto()
    }
}

object sofia{
    var categoria = null
    var bonoPorResultado = null

    method sueldo(){   
        return  self.neto() + bonoPorResultado.bono(self)
    }

    method categoria(_categoria){
        categoria = _categoria
    }

    method bonoPorResultado(_bonoPorResultado){
        bonoPorResultado = _bonoPorResultado
    }

    method neto(){
        return categoria.neto() + (30*categoria.neto()) / 100
    }
}

object roque{
    var bonoPorResultado = null


    method sueldo(){
        return self.neto() + bonoPorResultado.bono(self) + 9000
    }
    
    method neto(){
        return 28000
    }

    method bonoPorResultado(_bonoPorResultado){
        bonoPorResultado = _bonoPorResultado
    }

}

object ernesto{
    var companero = null
    var bonoPorPresentismo = null
    var faltas = 0

    method sueldo() {
        return self.neto() + bonoPorPresentismo.bono(self)
    }
    
    method companero(_companero){
        companero = _companero
    }

    method neto(){
        return companero.neto()
    }

    method bonoPorPresentismo(_bonoPorPresentismo){
        bonoPorPresentismo = _bonoPorPresentismo
    }

    method faltas(){
        return faltas
    }
}

//// NETO
object gerente{
    var neto = 15000
    method neto(){
        return neto
    }

    method neto(_neto){
        neto = _neto
    }
}

object cadete{
    var neto = 20000
    
    method neto(){
        return neto
    }

    method neto(_neto){
        neto = _neto
    }

    
}


///BONO POR RESULTADO

object porcentaje{

    // var property empleado = null

    method bono(empleado){
        return (10 * empleado.neto()) / 100
    }

}

object montoFijo{
    method bono(empleado){
        return 800
    }
}


// BONO POR PRESENTISMO

object normal{

    method bono(empleado){
        if(empleado.faltas() == 0){
            return 2000
        } else if(pepe.faltas() == 1){
            return 1000
        } else {
            return 0
        }
    }

}

object ajuste {

    method bono(empleado){
        if(empleado.faltas() == 0 ){
            return 100
        } else{
            return 0
        }
    }
}

object demagogico {

    //var property empleado = null 
    /*  PROPERTY == métodos setter y getter
        method empleado(_empleado){
            ...
        } AND
        method empleado(){
            return...
        }

    */

    method bono(empleado){
        if(empleado.neto() < 18000){
            return 500
        } else {
            return 300
        }
    }

}

//// NULO

object nulo{

    method bono(empleado){
        return 0
    }
}


/// CATEGORIAS PUNTO 2

object vendedor{
    var hayMuchasVentas = null
    var neto = 16000

    method neto(){
        if(hayMuchasVentas){
            return neto * 1.25
        } else {
            return neto
        }
    }

    method neto(_neto){
        neto = _neto
    }

    method activarAumentoPorMuchasVentas(){
        hayMuchasVentas = true
    }

    method desactivarAumentoPorMuchasVentas(){
        hayMuchasVentas = false
    }
}

object medioTiempo{

    method categoriaBase(categoria){
        categoria.neto(categoria.neto()/2)
    }
}

