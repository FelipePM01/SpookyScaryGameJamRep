extends KinematicBody2D
var Target=null
var velocity=Vector2(0,0)
var SPEED=150
var abobora=preload("res://Scenes/Abobora.tscn")
var life=2
func start(startPosition,target):
	global_position=startPosition
	Target=target
	$AnimationPlayer.play("attacking")


func _physics_process(delta):
	if Target!=null:

		velocity=Target.global_position-global_position
		velocity=velocity.normalized()*SPEED
		var collision=move_and_collide(velocity*delta)
		if collision:
			if collision.collider.has_method("catch"):
				collision.collider.catch()

	

func shoot():
	var a=abobora.instance()
	get_parent().add_child(a)
	a.start(global_position,velocity)
	
	
func getVelocity():
	return velocity
	
func setSpeed(speed):
	SPEED=speed
	
	


func _on_AnimationPlayer_animation_finished(anim_name):
	
	shoot()
	$AnimationPlayer.play("attacking")

func setLife(new_life):
	life=new_life
	
func hit(damage):
	life-=damage
	if life<=0:
		queue_free()
		
		
