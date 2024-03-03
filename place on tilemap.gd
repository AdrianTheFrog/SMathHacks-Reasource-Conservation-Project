extends TileMap

func _input(event):
	# Mouse in viewport coordinates.
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed() == true:
		set_cell(0, local_to_map(get_local_mouse_position()), 1, Vector2i(0,0))
