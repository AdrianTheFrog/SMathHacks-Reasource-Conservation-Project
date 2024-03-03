extends Node2D
var power = 0
var wood = 0
var water = 0
var coal = 0
var oil = 0
var bits = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	

	pass # Replace with function body.


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
