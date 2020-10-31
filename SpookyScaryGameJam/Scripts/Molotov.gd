extends "res://Scripts/Projectile.gd"
onready var fire=preload("res://Scenes/Fire.tscn")

func _exit_tree():
	var f=fire.instance()
	get_parent().add_child(f)
	f.start(global_position)
	
	


func _on_Timer_timeout():
	queue_free()
