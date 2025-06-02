extends RayCast2D

var interaction = null

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		if Global.in_menu == false:
			if is_colliding() and get_collider().is_in_group("interactable"):
				interaction = get_collider()
				interact()
			else: interaction = null

func interact():
	if interaction != null:
		interaction.interacted()
