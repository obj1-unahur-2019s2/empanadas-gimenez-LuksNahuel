object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	// var property sueldo = 15000
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method totalDeuda(){return deuda}
	method totalDinero() {return dinero}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() {
		//dinero += sueldo
		var calculo = deuda - sueldo
		if(calculo < 0) {
			dinero += calculo * -1
			deuda = 0
		} else {
			deuda = calculo
			dinero = 0
		}
	}
	method cobrarSueldoVistoEnClases () {
		dinero += sueldo
		if(dinero >= deuda){
			dinero -= deuda
			deuda = 0
		} else {
			deuda -= dinero
			dinero = 0
		}
	}
	method cobrarSueldo_Mejor(){
		var aDescontar
		dinero += sueldo
		aDescontar = deuda.min(dinero)
		deuda -= aDescontar
		dinero -= aDescontar
	}
	method gastar(cuanto){
		var calculo = dinero - cuanto
		if(calculo < 0){
			dinero = 0
			deuda += calculo * -1
		} else {
			dinero -= cuanto
		}
	}	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	method totalCobrado() {
		return totalCobrado
	}
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
 	method cobrarSueldo() {
 		totalCobrado += self.sueldo()
 	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
