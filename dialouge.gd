extends CanvasLayer

@export var dialouge_lines:Array[String] = []
var line_index = 0


func _on_continue_pressed() -> void:
	if dialouge_lines.size() >= (line_index + 2):
		line_index += 1
		display()
	else:
		_on_close_pressed()


func _on_close_pressed() -> void:
	visible = false
	Global.in_menu = false


func display():
	$dialouge/PanelContainer/VBoxContainer/PanelContainer/MarginContainer/RichTextLabel.text = dialouge_lines[line_index]
