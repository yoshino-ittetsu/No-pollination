extends RigidBody2D

signal add_score

func _ready():
    var direction = Vector2(rand_range(-1, 0), rand_range(0, 1)).normalized()
    var velocity = direction * $"/root/Global".ENEMY_SPEED 
    apply_impulse(Vector2.ZERO, velocity)


func _on_Life_timeout():
    $"/root/Global".SCORE += 10;
    # $"res://scenes/mainHUD::ScoreLabel".text = "Score: %09d" % $"/root/Global".SCORE
    # emit_signal("add_score", 10)
    self.queue_free()

func _on_VisibilityNotifier2D_screen_exited():
    if $Life.time_left != 0:
        get_tree().change_scene("res://scenes/ending.tscn")
