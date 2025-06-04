extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.in_menu = true
	$interactions/dialouge.line_index = 0
	$interactions/dialouge.display()
	$interactions/dialouge.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
