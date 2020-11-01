extends "res://Scripts/Espantalho.gd"
onready var morcego=preload("res://Scenes/Morcego.tscn")
func shoot():
	var m=morcego.instance()
	get_parent().add_child(m)
	m.start(global_position,getVelocity)
