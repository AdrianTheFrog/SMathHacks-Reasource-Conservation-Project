extends Camera2D

var lookAheadPos = Vector2.ZERO

func _process(delta):
	var speed = 0.025
	var lookAheadDistance = 0.2
	var lookAheadResponse = 0.01
	
	lookAheadPos = lookAheadPos*(1-lookAheadResponse) + lookAheadDistance*%Character.get_real_velocity ()*lookAheadResponse
	set_global_position(get_global_position()*(1-speed)+(%Character.get_global_position()+lookAheadPos)*speed)
	zoom = Vector2(get_viewport().size.x/500.,get_viewport().size.x/500.).ceil()
