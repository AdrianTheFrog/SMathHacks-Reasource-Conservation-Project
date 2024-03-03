extends TileMap
var placingvalue = 0


	
func _on_powerplantbutton_pressed():
	var placingvalue = 1

func _on_waterpumpbutton_pressed():
	var placingvalue = 3
	
func _on_oilpumpbutton_pressed():
	var placingvalue = 4

func _on_recyclebutton_pressed():
	var placingvalue = 2

func _input(event):
	# Mouse in viewport coordinates.

	if placingvalue == 1:
		
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed() == true:
				set_cell(0, Vector2i(floor(get_local_mouse_position()/32)), (1), Vector2i(0,0))
				print(ceil(get_local_mouse_position()/32))
