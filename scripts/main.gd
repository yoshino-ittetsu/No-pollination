extends Node2D

export(PackedScene) var tower_scene
var sperma_scene: PackedScene = load("res://scenes/Sperma.tscn")
var screen_size: Vector2

func _ready():
    screen_size = get_viewport_rect().size
    # $"/root/Global".TIME_STR = "Timer: 00:00:00"

func _input(event):
    if event is InputEventMouseButton and Input.is_action_pressed("drop_tower"):
        var tower = tower_scene.instance()
        tower.position = event.position
        add_child(tower)

func _on_SpermaBorn_timeout():
    var sperma = sperma_scene.instance()
    sperma.connect("add_score", self, "res://scenes/mainHUD.tscn::_on_RigidBody2D_add_score")
    sperma.position = Vector2(screen_size.x - 10, 145)
    add_child(sperma)

