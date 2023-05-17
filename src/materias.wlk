
object universidad {
	const carreras = #{}
}


class Estudiante {

	const property materiasAprobadas = #{}
	const carreras = #{}

	method aprueba(materiaAprobada, notaAprobada) {
		materiasAprobadas.add(new Aprobada(materia = materiaAprobada, nota = notaAprobada))
	}
	
	method materiasQueMePuedoInscribir() {}
	
	method inscribir(materia) {
		self.validarInscripcion(materia)
	}
	
	method validarInscripcion(materia) {
		// validar que la materia sea de una de las carreras que esta cursando
		// validar que no la tenga ya aprobada
		// validar que no este siendo cursada
		materia.validarRequisito(self)
	}
	
	method cantidadCreditos() {
		return materiasAprobadas.sum({ma => ma.credito()})
	}

}

class Carrera {

	const materias = #{}

}

class Aprobada {

	const property nota
	const property materia
	
	method credito() {
		return materia.creditosQueOtorga()
	}

}

