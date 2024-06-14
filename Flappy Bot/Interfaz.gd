extends CanvasLayer

onready var label_puntaje = $Puntaje

func updated_score(nuevo_puntuaje):
	label_puntaje.text = str(nuevo_puntuaje)
