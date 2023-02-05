extends Area2D


export var toughtness: int = 5  # Tower's life points
var screen_size: Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
    screen_size = get_viewport_rect().size
    $Timer.start()


func _process(delta):
    if int(($Timer.wait_time - $Timer.time_left) * 10 )  % 5 == 0   :
        fire_bullets()

func fire_bullets():
    var ballet = load("res://scenes/Tower-s_Ballet.tscn").instance()
    call_deferred("add_child", ballet)
    call_deferred("move_child", ballet, int($Timer.time_left * 10))
    ballet.mode = 2


func _on_Timer_timeout():
    queue_free()
