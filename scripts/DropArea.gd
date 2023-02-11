extends Node2D

export(PackedScene) var tower_scene
var screen_size: Vector2

func _ready():
    screen_size = get_viewport_rect().size


func _input(event):
    if event is InputEventMouseButton and Input.is_action_pressed("drop_tower"):
        var tower = tower_scene.instance()
        tower.position = event.position
        add_child(tower)

