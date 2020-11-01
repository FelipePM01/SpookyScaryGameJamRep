extends "res://Scripts/Espantalho.gd"
onready var morcego=preload("res://Scenes/Morcego.tscn")
var speed=130
var Life=3
func shoot():
	print(1)
	var m=morcego.instance()
	get_parent().add_child(m)
	m.start(global_position,getVelocity())


func _on_AnimationPlayer_animation_finished(anim_name):
	._on_AnimationPlayer_animation_finished(anim_name)
 
func _ready():
	.setSpeed(speed)
	.setLife(life)
	
