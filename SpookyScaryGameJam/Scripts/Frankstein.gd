extends "res://Scripts/Espantalho.gd"
onready var parafuso=preload("res://Scenes/Parafuso.tscn")
onready var porca=preload("res://Scenes/Porca.tscn")
func shoot():
	for i in [-2,-1,1,2]:
		var x=randi()%2
		if x==0:
			var p=parafuso.instance()
			get_parent().add_child(p)
			p.start(global_position,getVelocity().rotated(i*PI/12))
		else:
			var p=porca.instance()
			get_parent().add_child(p)
			p.start(global_position,getVelocity().rotated(i*PI/12))
