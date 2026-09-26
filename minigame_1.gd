extends Node2D

@onready var themed_timer: Node2D = $ThemedTimer

var garlic_collected = 0


func _ready() -> void:
	# Start the 10 second countdown
	await themed_timer.Timer(10.0)
	# Timer has finished
	if garlic_collected < 4:
		Global.lives -= 1
		if Global.lives <= 0:
			get_tree().change_scene_to_file("res://death_scene.tscn")
		else:
			get_tree().change_scene_to_file("res://level_scene.tscn")
			


func garlic_collect() -> void:
	garlic_collected += 1
	if garlic_collected == 4:
		if Global.minigames_done > 5:
			get_tree().change_scene_to_file("res://scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://level_scene.tscn")


func _on_garlic_node_1_garlic_collected() -> void:
	garlic_collect()


func _on_garlic_node_2_garlic_collected() -> void:
	garlic_collect()


func _on_garlic_node_3_garlic_collected() -> void:
	garlic_collect()


func _on_garlic_node_4_garlic_collected() -> void:
	garlic_collect()
