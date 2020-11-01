extends "res://Scripts/Espantalho.gd"
onready var parafuso=preload("res://Scenes/Parafuso.tscn")
onready var porca=preload("res://Scenes/Porca.tscn")
var speed=70
var Life=5
func shoot():
	print(1)
	for i in [-2,-0,2]:
		var x=randi()%2
		if x==0:
			var p=parafuso.instance()
			get_parent().add_child(p)
			p.start(global_position,getVelocity().rotated(i*PI/36))
		else:
			var p=porca.instance()
			get_parent().add_child(p)
			p.start(global_position,getVelocity().rotated(i*PI/36))
			
func _ready():
	.setSpeed(speed)
	.setLife(life)
