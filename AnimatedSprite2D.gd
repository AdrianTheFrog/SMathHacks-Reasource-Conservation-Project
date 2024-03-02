extends AnimatedSprite2D
func _ready():
	position = Vector2(get_viewport().size.x/2,get_viewport().size.y/2)
	scale = Vector2(1.2,1.2)
	set_process(true)
@onready var _animated_sprite = %AnimatedSprite2D
func _process(delta):
	var speed = 100.0
	
	if Input.is_action_pressed('Up'):
		position.y -= speed * delta
		_animated_sprite.play("forward")
	if Input.is_action_pressed('Down'):
		position.y += speed * delta
		
	if Input.is_action_pressed('Left'):
		position.x -= speed * delta
		
	if Input.is_action_pressed('Right'):
		position.x += speed * delta
		
