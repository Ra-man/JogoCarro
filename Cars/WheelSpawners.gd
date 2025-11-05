extends Node3D

func die():
	$DeadWheel1.visible = true
	$DeadWheel1/CollisionShape3D.disabled = false
	$DeadWheel1.set_as_top_level(true)
	$DeadWheel2.visible = true
	$DeadWheel2/CollisionShape3D.disabled = false
	$DeadWheel2.set_as_top_level(true)
	$DeadWheel3.visible = true
	$DeadWheel3/CollisionShape3D.disabled = false
	$DeadWheel3.set_as_top_level(true)
	$DeadWheel4.visible = true
	$DeadWheel4/CollisionShape3D.disabled = false
	$DeadWheel4.set_as_top_level(true)
	
