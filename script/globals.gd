extends Node2D

var artist
var title
var description

func _on_confirm_button_up() -> void:
	artist = get_parent().get_node("Artist").text
	print(artist)
	title = get_parent().get_node("Title").text
	print(title)
	description = get_parent().get_node("Description").text
	print(description)
	
