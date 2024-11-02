extends FileDialog


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 412
	position.y = 359
	size.x = 1096
	size.y = 359


func _on_change_file_button_up() -> void:
	self.popup_centered_ratio()
	position.x = 412
	position.y = 359
	size.x = 1096
	size.y = 359
