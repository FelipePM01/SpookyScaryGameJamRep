extends "res://Scripts/Projectile.gd"



var thisSpeed=450

# Called when the node enters the scene tree for the first time.
func _ready():
	.changeSpeed(thisSpeed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	queue_free()
