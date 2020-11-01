extends "res://Scripts/Espantalho.gd"
onready var papel=preload("res://Scenes/Papel.tscn")
var speed=100
var Life=3
func shoot():
	var p=papel.instance()
	add_child(p)
	p.start(getVelocity())
	
	
func _ready():
	.setSpeed(speed)
	.setLife(life)
