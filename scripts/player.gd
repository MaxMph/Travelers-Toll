extends CharacterBody2D


const SPEED = 14
const fric = 2


func _physics_process(delta: float) -> void:


	var direction := Input.get_vector("left","right","up","down").normalized()
	if direction != Vector2.ZERO:
		velocity.x = direction.x * SPEED
		velocity.y = direction.y * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, fric)
		velocity.y = move_toward(velocity.y, 0, fric)
		
	#$Control.get_viewport().get_global
	#$Marker2D.position = #to_local( get_viewport().get_mouse_position() )
	#$RayCast2D.look_at(get_viewport().get_mouse_position())
	#$RayCast2D.look_at(to_global(get_viewport().get_mouse_position()))
	#$RayCast2D.look_at($Marker2D.global_position)
	$int_cast.look_at(get_global_mouse_position())

	move_and_slide()
