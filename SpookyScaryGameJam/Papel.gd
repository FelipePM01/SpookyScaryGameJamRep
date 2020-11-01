extends "res://Scripts/Orbitar.gd"
var Radius=100
var increase=50
var omega=PI/4
func _ready():
	.setR(Radius)
	.setW(omega)
	
func _physics_process(delta):
	Radius+=increase*delta
	setR(Radius)


func _on_Papel_body_entered(body):
	._on_Area2D_body_entered(body)
