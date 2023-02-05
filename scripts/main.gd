extends Node2D

export(PackedScene) var tower_scene
var sperma_scene: PackedScene = load("res://scenes/Sperma.tscn")
var screen_size: Vector2

func _ready():
	screen_size = get_viewport_rect().size
	print_debug($SpermaBorn.is_stopped())

func _input(event):
	if event is InputEventMouseButton and Input.is_action_pressed("drop_tower"):
		var tower = tower_scene.instance()
		tower.position = event.position
		add_child(tower)

func _on_SpermaBorn_timeout():
	var sperma = sperma_scene.instance()
	sperma.position = Vector2(screen_size.x - 130, 136)
	add_child(sperma)
	print_debug($SpermaBorn.is_stopped())
