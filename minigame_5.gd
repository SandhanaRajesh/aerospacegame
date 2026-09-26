extends Node2D


func _on_normal_levels_pressed() -> void:
	Global.lives -= 1
	if Global.lives <= 0:
		get_tree().change_scene_to_file("res://death_scene.tscn")
	else:
		get_tree().change_scene_to_file("res://level_scene.tscn")


func _on_abnormal_levels_pressed() -> void:
	if Global.minigames_done >=5:
		get_tree().change_scene_to_file("res://done_scene.tscn")
	elif Global.minigames_done <5:
		get_tree().change_scene_to_file("res://level_scene.tscn")
