extends Node2D

const SPEED: float = 60.0

@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction: float = 1.0

func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = 1.0
		animated_sprite.flip_h = false
	if ray_cast_right.is_colliding():
		direction = -1.0
		animated_sprite.flip_h = true
	position.x += direction * SPEED * delta
