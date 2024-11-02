extends Node2D

var title = "Waveform"

func _input(_input):
	if self.name == "input":
		if Input.is_action_pressed("ui_esc"):
			get_tree().quit()
	elif self.name == "wave":
		if Input.is_action_pressed("ui_esc"):
			get_tree().change_scene_to_file("res://scenes/input.tscn")


func _on_file_dialog_file_selected(path: String) -> void:
	var pystdout = []
	OS.execute("rm", ["wave.png"], pystdout, true)
	print(path)
	get_node("Selection").text = "Selected file:\n" + path
	OS.execute("python3", ["generate.py", path], pystdout, true)
	print(pystdout)

func _on_confirm_button_up() -> void:
	Global.artist = str(get_node("Artist").text)
	Global.title = str(get_node("Title").text)
	Global.description = str(get_node("Description").text)
	get_tree().change_scene_to_file("res://scenes/wave.tscn")


func _on_artist_output_tree_entered() -> void:
	get_node("ArtistOutput").text = Global.artist
	get_node("TitleOutput").text = Global.title
	get_node("DescriptionOutput").text = Global.description
