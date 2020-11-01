extends KinematicBody2D
var Target=null
var velocity=Vector2(0,0)
var SPEED=150
var abobora=preload("res://Scenes/Abobora.tscn")
func start(startPosition,target):
	global_position=startPosition
	Target=target

func _physics_process(delta):
	if Target!=null:
		
		velocity=Target.global_position-global_position
		velocity=velocity.normalized()*SPEED
		var collision=move_and_collide(velocity*delta)
		if collision:
			if collision.collider.has_method("catch"):
				collision.collider.catch()
	
######funcao a colocar quando acabar animacao
func shoot():
	var a=abobora.instance()
	get_parent().add_child(a)
	a.start(global_position,velocity)
	
func getVelocity():
	return velocity
	
