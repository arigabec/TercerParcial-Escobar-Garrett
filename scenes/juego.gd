extends Node2D

var score = 0

func actualizar_score(value):
	score += value
	$UI/Score.text = "Score: " + str(score)

func actualizar_vida(value):
	$UI/Vida.text = "Vida: " + str(value)
