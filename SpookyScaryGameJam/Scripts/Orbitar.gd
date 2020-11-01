extends Area2D

var w=PI/2
var R=200
var fi=0

func _physics_process(delta):
	fi+=w*delta
	position=R*Vector2(sin(fi),-cos(fi))
	rotation=position.angle()
	


func _on_Area2D_body_entered(body):
	if body.has_method("hit") and body.is_in_group("character"):
		body.hit()
		get_parent().queue_free()
