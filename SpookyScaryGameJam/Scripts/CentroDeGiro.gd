extends Node2D
var velocity=Vector2(0,0)
var SPEED=150
func start(startPosition,Velocity):
	global_position=startPosition
	velocity=Velocity.normalized()*SPEED
	$Area2D.start(velocity)
func _physics_process(delta):
	global_position+=velocity*delta


