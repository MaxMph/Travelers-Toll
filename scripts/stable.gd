extends Area2D


func interacted():
	print("stable interacted")
	Global.in_menu = true
	$dialouge.line_index = 0
	$dialouge.display()
	$dialouge.visible = true
