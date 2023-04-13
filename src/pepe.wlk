import categorias.*
import bonos.*

object pepe {
	var categoria 
	var bonoPresentismo 
	var bonoResultado
	
	method getCategoria() = categoria
	method setCategoria(nuevaCategoria){
		categoria = nuevaCategoria
	}
	
	method getBonoPresentismo() = bonoPresentismo
	method setBonoPresentismo(nuevoBono){
		bonoPresentismo = nuevoBono
	}
	
	method getBonoResultado() = bonoResultado
	method setBonoResultado(nuevoBono){
		bonoResultado = nuevoBono
	}
	
	method getcantFaltas() = cantFaltas
	method setCantFaltas(faltas){
		cantFaltas = faltas
	}
	
	
	method sueldoNeto() = categoria.neto() 
	
	method sueldo(){ //neto + bono x presentismo + bono x resultados
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
	}
}
