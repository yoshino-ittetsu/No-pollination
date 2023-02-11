extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


var SCORE = 0;
var TIME_STR = "";
var ENEMY_SPEED = 600;
var ENEMY_TOUGHNESS = rand_range(5, 1000);
var ENEMY_NUM = 0;
var TIME_VALUE = 0.0;
