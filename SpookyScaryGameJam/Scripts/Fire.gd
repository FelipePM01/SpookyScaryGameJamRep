extends Area2D
var bodies=[]
var damage

func start(parent_position):
	global_position=parent_position

func _on_Fire_body_entered(body):
	if body.is_in_group("enemies"):
		bodies.append(body)


func _on_Fire_body_exited(body):
	if body.is_in_group("enemies"):
		bodies.erase(body)


func _on_DamageTimer_timeout():
	for i in bodies:
		if i.has_method("hit"):
			i.hit()


func _on_DurationTimer_timeout():
	queue_free()
