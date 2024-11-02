extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var image = Image.load_from_file("res://wave.png")
	var texture = ImageTexture.create_from_image(image)
	self.texture = texture
	
	await get_tree().create_timer(1).timeout
	var format_string = "res://wallpapers/%s_wall.png"
	var actual_string = format_string % Global.title
	var screenshot_path = actual_string
	# Retrieve the captured image
	var screenshot = get_viewport().get_texture().get_image()
	screenshot.save_png(screenshot_path)
