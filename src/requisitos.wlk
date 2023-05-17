class Materia {

	const estudiantes = #{}
	var property tipoDeRequisito = new Correlativa()
	var property creditosQueOtorga = 0

	method validarRequisito(estudiante) {
		tipoDeRequisito.validar(estudiante)
	}

}

class TipoRequisito {

	method validar(estudiante)

}

class Correlativa inherits TipoRequisito {

	const property correlativas = #{}

	override method validar(estudiante) {
		if (!correlativas.all({ correlativa => estudiante.tieneAprobada(correlativa)})) {
			self.error("no tiene todas las correlativas aprobadas")
		}
	}

}

class PorAnio inherits TipoRequisito {

	override method validar(estudiante) {
	}

}

class PorCreditos inherits TipoRequisito {

	var property creditosNecesarios = 100

	override method validar(estudiante) {
		if (estudiante.cantidadCreditos() < creditosNecesarios) {
			self.error("no tiene los creditos necesarios")
		}
	}

}

object sinRequisitos inherits TipoRequisito {

	override method validar(estudiante) {
	}

}

