
object universidad {
	const carreras = #{}
}


class Materia {

	const estudiantes = #{}

}

class Estudiante {

	const property materiasAprobadas = #{}

	method aprueba(materiaAprobada, notaAprobada) {
		materiasAprobadas.add(new Aprobada(materia = materiaAprobada, nota = notaAprobada))
	}

}

class Carrera {

	const materias = #{}

}

class Aprobada {

	const property nota
	const property materia

}

