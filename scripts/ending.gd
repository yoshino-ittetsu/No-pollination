extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func _on_GoToTtleButton_pressed():
    get_tree().change_scene("res://scenes/title.tscn")

func set_record_value(score, time, enemy_data):
    $RecordDialog/ScoreLabel.text = str(score)
    $RecordDialog/Time.text = str(time)
    $RecordDialog/EnemyNum.text = str(enemy_data.num)
    $RecordDialog/EnemySpeed.text = str(enemy_data.speed)
    $RecordDialog/EnemyToughness.text = str(enemy_data.toughness)
