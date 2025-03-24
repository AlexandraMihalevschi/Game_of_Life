extends Control

@onready var start_button: Button = $Start_button
@onready var quit_button: Button = $Quit_button
@onready var options_button: Button = $Options_button

func _ready() -> void:
	# Connect button signals
	start_button.pressed.connect(_on_start_pressed)
	quit_button.pressed.connect(_on_quit_pressed)
	options_button.pressed.connect(_on_options_pressed)

func _on_start_pressed() -> void:
	# Change scene to game_of_life.tscn
	get_tree().change_scene_to_file("res://game_of_life.tscn")

func _on_quit_pressed() -> void:
	# Quit the game
	get_tree().quit()

func _on_options_pressed() -> void:
	# Placeholder for future functionality
	print("Options button pressed (not implemented yet).")
