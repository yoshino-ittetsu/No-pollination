extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    $RecordDialog/ScoreLabel.text = str($"/root/Global".SCORE)
    $RecordDialog/TimeLabel.text = str($"/root/Global".TIME_STR)
    $RecordDialog/EnemyNum.text = str(1)
    $RecordDialog/EnemySpeed.text = "Speed: " + str($"/root/Global".ENEMY_SPEED)
    $RecordDialog/EnemyToughness.text = "Toughness: " + str($"/root/Global".ENEMY_TOUGHNESS)
    pass # Replace with function body.

func _on_GoToTtleButton_pressed():
    get_tree().change_scene("res://scenes/title.tscn")
