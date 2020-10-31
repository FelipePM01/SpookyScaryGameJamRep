extends KinematicBody2D
var direction=0
var velocity=Vector2(0,0)
var SPEED=300

func start(start_position,start_direction):
	global_position=start_position
	direction=start_direction
	velocity=direction.normalized()*SPEED
	rotation=velocity.angle()
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var collision=move_and_collide(velocity*delta)
	if collision:
		if collision.collider.has_method("hit"):
			collision.collider.hit()
		queue_free()

func changeSpeed(speed):
	
	SPEED=speed


