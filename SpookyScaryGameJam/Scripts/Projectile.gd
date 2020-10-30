extends KinematicBody2D
var direction=0
var velocity=Vector2(0,0)
var SPEED=300

func start(start_position,start_direction):
	global_position=start_position
	direction=start_direction
	velocity=direction.normalized()*SPEED
	print(1)
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var collision=move_and_collide(velocity*delta)
	if collision:
		if collision.collider.has_method("hit"):
			collision.collider.hit()
		print(2)
		queue_free()


func _on_CollisionShape2D_visibility_changed():
#	print(2)
#	queue_free()
	pass
