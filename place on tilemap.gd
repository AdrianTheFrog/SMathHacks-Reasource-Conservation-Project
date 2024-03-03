extends TileMap

func _input(event):
	# Mouse in viewport coordinates.
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed() == true:
		set_cell(0, Vector2i(floor(get_local_mouse_position()/32)), 0, Vector2i(0,0))
		print(ceil(get_local_mouse_position()/32))
