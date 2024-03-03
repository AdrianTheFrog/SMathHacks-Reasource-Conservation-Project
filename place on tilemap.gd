extends TileMap
var placingvalue = 1
var mouseontilemap = true

	
func _on_powerplantbutton_pressed():
	placingvalue = 1

func _on_waterpumpbutton_pressed():
	placingvalue = 3
	
func _on_oilpumpbutton_pressed():
	placingvalue = 4

func _on_recyclebutton_pressed():
	placingvalue = 2

func _on_bankbutton_pressed():
	placingvalue = 6

func _on_coalminebutton_pressed():
	placingvalue = 5

# noemmissions = [-1,0,2,6]
const lowemmissions = [3,4]
const medemmissions = [5]
const highemmissions = [1]

func _input(event):
	# Mouse in viewport coordinates.
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed() == true and mouseontilemap:
		if get_cell_source_id(0, Vector2i(floor(get_local_mouse_position()/32))) in lowemmissions:
			GlobalVars.placedbuildings -= 1
		if get_cell_source_id(0, Vector2i(floor(get_local_mouse_position()/32))) in medemmissions:
			GlobalVars.placedbuildings -= 3
		if get_cell_source_id(0, Vector2i(floor(get_local_mouse_position()/32))) in highemmissions:
			GlobalVars.placedbuildings -= 6
		if placingvalue in lowemmissions:
			GlobalVars.placedbuildings += 1
		if placingvalue in medemmissions:
			GlobalVars.placedbuildings += 3
		if placingvalue in highemmissions:
			GlobalVars.placedbuildings += 6
		print(GlobalVars.placedbuildings)
		set_cell(0, Vector2i(floor(get_local_mouse_position()/32)), placingvalue, Vector2i(0,0))


func _on_powerplantbutton_mouse_entered():
	mouseontilemap = false
func _on_powerplantbutton_mouse_exited():
	mouseontilemap = true
func _on_waterpumpbutton_mouse_entered():
	mouseontilemap = false
func _on_waterpumpbutton_mouse_exited():
	mouseontilemap = true
func _on_oilpumpbutton_mouse_entered():
	mouseontilemap = false
func _on_oilpumpbutton_mouse_exited():
	mouseontilemap = true
func _on_recyclebutton_mouse_entered():
	mouseontilemap = false
func _on_recyclebutton_mouse_exited():
	mouseontilemap = true
func _on_bankbutton_mouse_entered():
	mouseontilemap = false
func _on_bankbutton_mouse_exited():
	mouseontilemap = true
func _on_coalminebutton_mouse_entered():
	mouseontilemap = false
func _on_coalminebutton_mouse_exited():
	mouseontilemap = true
