extends KinematicBody2D
var velocity=Vector2(0,0)
var SPEED=200
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_pressed("up"):
		velocity.y=-1
	elif Input.is_action_pressed("down"):
		velocity.y=1
	else:
		velocity.y=0
	if Input.is_action_pressed("left"):
		velocity.x=-1
	elif Input.is_action_pressed("right"):
		velocity.x=1
	else:
		velocity.x=0
	velocity=velocity.normalized()*SPEED
	var collision=move_and_collide(velocity*delta)
	
	if Input.is_action_just_pressed("shoot"):
		pass
