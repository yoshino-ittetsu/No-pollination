extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func _on_StartButton_pressed():
    $"/root/Global".ENEMY_SPEED = 600
    $"/root/Global".SCORE = 0
    get_tree().change_scene("res://scenes/main.tscn")
