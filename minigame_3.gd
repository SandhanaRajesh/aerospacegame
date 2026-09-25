extends Node2D


func _on_reliable_pressed() -> void:
	Global.lives -= 1
	get_tree().change_scene_to_file("res://level_scene.tscn")


func _on_unreliable_pressed() -> void:
	get_tree().change_scene_to_file("res://level_scene.tscn")
