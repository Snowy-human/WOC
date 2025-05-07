extends Control

@onready var CharT = $"P/VB/Char type"
var CharS := 0

func _on_play_pressed() -> void:
## world would be made in a diffent panel but HAHAHAHAHAHAHAHAAH no - WT
	get_tree().change_scene_to_file("res://Scenes/dev_world.tscn")

## fucking hate this code will have to rework for diffent races maybe - WT

func _on_char_type_pressed() -> void:
	CharS += 1
	if CharS >= 2:
		CharS = 0
	var temp = ""
	if CharS == 0:
		temp = "Fem"
	elif CharS == 1:
		temp = "Mas"
	CharT.text = temp
	print(CharT.text)

## maybe some anis for this so its not so weak? - WT

func _on_quit_pressed() -> void:
	get_tree().quit()
