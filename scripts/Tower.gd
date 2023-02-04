extends Area2D


export var toughtness: int = 5  # Tower's life points
var screen_size: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
