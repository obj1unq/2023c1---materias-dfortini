class Materia {

	const estudiantes = #{}

}

class Estudiante {

	const materiasAprobadas = #{}

	method aprueba(materiaAprobada, notaAprobada) {
		materiasAprobadas.add(new Aprobada(materia = materiaAprobada, nota = notaAprobada))
	}

}

class Carrera {

	const materias = #{}

}

class Aprobada {

	const nota
	const materia

}

