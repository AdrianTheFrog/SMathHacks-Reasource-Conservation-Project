extends Node2D
var power = 0
var wood = 0
var water = 0
var coal = 0
var oil = 0
var bits = 0

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Camera2D/powerui.text = ":" + str(power)# has ui values
	$Camera2D/woodui.text = ":" + str(wood)
	$Camera2D/waterui.text = ":" + str(water)
	$Camera2D/coalui.text = ":" + str(coal)
	$Camera2D/oilui.text = ":" + str(oil)
	$Camera2D/bitsui.text = ":" + str(bits)
	
	
	
	
	pass


func _on_timer_timeout():
	$Camera2D/Climatechange.value += 1 #put multiplicaton from buildings here
	pass # Replace with function body.

func _on_powerplantbutton_mouse_entered():
	var powerlabel = get_node("Camera2D/powerplanttext")
	var powerback = get_node("Camera2D/powerplantpanel")
	powerback.visible = true
	powerlabel.visible = true
	
func _on_waterpumpbutton_mouse_entered():
	var waterlabel = get_node("Camera2D/waterplanttext")
	var waterback = get_node("Camera2D/waterplantpanel")
	waterback.visible = true
	waterlabel.visible = true
	
func _on_oilpumpbutton_mouse_entered():
	var oillabel = get_node("Camera2D/oiltext")
	var oilback = get_node("Camera2D/oilpumppanel")
	oilback.visible = true
	oillabel.visible = true
	
func _on_recyclebutton_mouse_entered():
	var recyclelabel = get_node("Camera2D/recycletext")
	var recycleback = get_node("Camera2D/recyclepanel")
	recycleback.visible = true
	recyclelabel.visible = true

func _on_bankbutton_mouse_entered():
	var banklabel = get_node("Camera2D/banktext")
	var bankback = get_node("Camera2D/bankpanel")
	bankback.visible = true
	banklabel.visible = true

func _on_coalminebutton_mouse_entered():
	var coallabel = get_node("Camera2D/coalminetext")
	var coalback = get_node("Camera2D/coalminepanel")
	coalback.visible = true
	coallabel.visible = true
	
	
func _on_powerplantbutton_mouse_exited():
	var powerlabel = get_node("Camera2D/powerplanttext")
	var powerback = get_node("Camera2D/powerplantpanel")
	powerback.visible = false
	powerlabel.visible = false
func _on_waterpumpbutton_mouse_exited():
	var waterlabel = get_node("Camera2D/waterplanttext")
	var waterback = get_node("Camera2D/waterplantpanel")
	waterback.visible = false
	waterlabel.visible = false
	
func _on_oilpumpbutton_mouse_exited():
	var oillabel = get_node("Camera2D/oiltext")
	var oilback = get_node("Camera2D/oilpumppanel")
	oilback.visible = false
	oillabel.visible = false
	
func _on_recyclebutton_mouse_exited():
	var recyclelabel = get_node("Camera2D/recycletext")
	var recycleback = get_node("Camera2D/recyclepanel")
	recycleback.visible = false
	recyclelabel.visible = false

func _on_bankbutton_mouse_exited():
	var banklabel = get_node("Camera2D/banktext")
	var bankback = get_node("Camera2D/bankpanel")
	bankback.visible = false
	banklabel.visible = false

func _on_coalminebutton_mouse_exited():
	var coallabel = get_node("Camera2D/coalminetext")
	var coalback = get_node("Camera2D/coalminepanel")
	coalback.visible = false
	coallabel.visible = false
	
