extends Node2D

@onready var themed_timer: Node2D = $ThemedTimer

var buttons_pressed := 0
var timer_end := false


func _ready() -> void:
	await themed_timer.Timer(4.0)

	timer_end = true


func _process(delta: float) -> void:

	# Successfully completed the timer/minigame
	if buttons_pressed == 4:
		if Global.minigames_done > 5:
			get_tree().change_scene_to_file("res://scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://level_scene.tscn")

	# Failed
	elif timer_end:
		Global.lives -= 1
		if Global.lives <= 0:
			get_tree().change_scene_to_file("res://death_scene.tscn")
		else:
			get_tree().change_scene_to_file("res://level_scene.tscn")
