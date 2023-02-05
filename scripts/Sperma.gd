extends RigidBody2D

export (float) var ball_speed = 150.0

func _ready():
	var direction = Vector2(-1, 1).normalized()
	var velocity = direction * ball_speed
	apply_impulse(Vector2.ZERO, velocity)


func _on_Life_timeout():
	self.queue_free()
