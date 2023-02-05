extends Node2D

var ballet_tower_scen = load("res://scenes/BalletTower.tscn")
var debuff_tower_scen = load("res://scenes/DebuffTower.tscn")
var screen_size: Vector2

func _ready():
    screen_size = get_viewport_rect().size

func _input(event):
    if event is InputEventMouseButton and Input.is_action_pressed("drop_ballet_tower"):
        var ballet_tower = ballet_tower_scen.instance()
        ballet_tower.position = event.position
        add_child(ballet_tower)

    if event is InputEventMouseButton and Input.is_action_pressed("drop_debuf_tower"):
        var debuff_tower = debuff_tower_scen.instance()
        debuff_tower.position = event.position
        add_child(debuff_tower)
