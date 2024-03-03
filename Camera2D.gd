extends Camera2D

var lookAheadPos = Vector2.ZERO

func _process(delta):
	var speed = 2.5
	var lookAheadDistance = .5
	var lookAheadResponse = 1.0
	
	lookAheadPos = lookAheadPos*(1-(lookAheadResponse)*delta) + lookAheadDistance*%Character.get_real_velocity()*lookAheadResponse*delta
	set_global_position(get_global_position()*(1-(speed*delta))+(%Character.get_global_position()+lookAheadPos)*speed*delta)
	zoom = Vector2(get_viewport().size.x/500.,get_viewport().size.x/500.).ceil()
