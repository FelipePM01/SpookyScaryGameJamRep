extends Node2D
var velocity=Vector2(0,0)

func start(startPosition,Velocity):
	global_position=startPosition
	velocity=Velocity

func _physics_process(delta):
	global_position+=velocity*delta


