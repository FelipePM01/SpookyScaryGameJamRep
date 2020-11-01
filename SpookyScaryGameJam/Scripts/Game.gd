extends Node2D
enum monsters{ESPANTALHO,FRANKSTEIN,DRACULA,MUMIA}
var monsters_instance=[preload("res://Scenes/Espantalho.tscn"),preload("res://Scenes/Frankstein.tscn"),preload("res://Scenes/Dracula.tscn"),preload("res://Scenes/Mumia.tscn")]
var monsters_points=[10,25,20,15]
var length=4
var minimum=10
func spawn(points):
	var Points=points
	while(Points>=minimum):
		var moster=randi()%4

