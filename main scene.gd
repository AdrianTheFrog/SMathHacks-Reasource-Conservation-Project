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


func _on_powerplantbutton_pressed():
	var powerlabel = get_node("Camera2D/powerplanttext")
	var powerback = get_node("Camera2D/powerplantpanel")
	powerback.visible = true
	powerlabel.visible = true
	pass # Replace with function body.


func _on_waterpumpbutton_pressed():
	var waterlabel = get_node("Camera2D/waterplanttext")
	var waterback = get_node("Camera2D/waterplantpanel")
	waterback.visible = true
	waterlabel.visible = true
	pass # Replace with function body.


func _on_oilpumpbutton_pressed():
	var oillabel = get_node("Camera2D/oiltext")
	var oilback = get_node("Camera2D/oilpumppanel")
	oilback.visible = true
	oillabel.visible = true
	
	pass # Replace with function body.


func _on_recyclebutton_pressed():
	var recyclelabel = get_node("Camera2D/recycletext")
	var recycleback = get_node("Camera2D/recyclepanel")
	recycleback.visible = true
	recyclelabel.visible = true
	pass # Replace with function body.

func _on_bankbutton_pressed():
	var banklabel = get_node("Camera2D/banktext")
	var bankback = get_node("Camera2D/bankpanel")
	bankback.visible = true
	banklabel.visible = true
	pass # Replace with function body.

func _on_coalminebutton_pressed():
	var coallabel = get_node("Camera2D/coalminetext")
	var coalback = get_node("Camera2D/coalminepanel")
	coalback.visible = true
	coallabel.visible = true
	pass # Replace with function body.

func _on_timer_for_ui_timeout():
	var oillabel = get_node("Camera2D/oiltext")
	var oilback = get_node("Camera2D/oilpumppanel")
	oilback.visible = false
	oillabel.visible = false
	
	var powerlabel = get_node("Camera2D/powerplanttext")
	var powerback = get_node("Camera2D/powerplantpanel")
	powerback.visible = false
	powerlabel.visible = false
	
	var waterlabel = get_node("Camera2D/waterplanttext")
	var waterback = get_node("Camera2D/waterplantpanel")
	waterback.visible = false
	waterlabel.visible = false
	
	var recyclelabel = get_node("Camera2D/recycletext")
	var recycleback = get_node("Camera2D/recyclepanel")
	recycleback.visible = false
	recyclelabel.visible = false
	
	var banklabel = get_node("Camera2D/banktext")
	var bankback = get_node("Camera2D/bankpanel")
	bankback.visible = false
	banklabel.visible = false
	
	var coallabel = get_node("Camera2D/coalminetext")
	var coalback = get_node("Camera2D/coalminepanel")
	coalback.visible = false
	coallabel.visible = false
	pass # Replace with function body.






