import categorias.*
import pepe.*

object bonoPorcentaje {
	method monto(unEmpleado){
		return unEmpleado.getCategoria().neto() * 0.1 // otra forma: 10/100
	}
}

object bonoFijo {
	method monto(unEmpleado){
		return 80
	}
}

object bonoDependeFaltas {
	method monto(unEmpleado){
		cons6t faltas = unEmpleado.faltas()
		
		if(faltas == 0){
			return 100
		}
		else if (faltas == 1){
			return 50
		}
		else {
			return 0
		}
	}
}

object bonoNulo {
	method monto(unEmpleado){
		return 0
	}
}


