extends Area2D

func _on_body_entered(body):
	if body.is_in_group("jugador"):
		get_tree().get_current_scene().get_node("Jugador").actualizar_vida(60)
		$AnimationPlayer.play("recoger")
		$CollisionShape2D.set_deferred("disabled", true)

func _on_animation_player_animation_finished(anim_name):
	queue_free()
