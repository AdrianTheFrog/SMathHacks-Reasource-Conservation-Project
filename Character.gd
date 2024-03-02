extends CharacterBody2D


const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	position = Vector2(0,0)
	set_process(true)

@onready var _animated_sprite = $AnimatedSprite2D
var idle = "idleback"

func _process(delta):
	var speed = 100.0
	velocity = Vector2(0,0)
	
	if Input.is_action_pressed('Up'):
		velocity += Vector2.UP * speed
		if not (Input.is_action_pressed('Left') or Input.is_action_pressed('Right')):
			_animated_sprite.play("forward")
			idle = "idleforward"
	
	if Input.is_action_pressed('Down'):
		velocity += Vector2.DOWN * speed
		if not (Input.is_action_pressed('Left') or Input.is_action_pressed('Right')):
			_animated_sprite.play("back")
			idle = "idleback"
	
	if Input.is_action_pressed('Left'):
		velocity += Vector2.LEFT * speed
		_animated_sprite.play("left")
		idle = "idleleft"
	
	if Input.is_action_pressed('Right'):
		velocity += Vector2.RIGHT * speed
		_animated_sprite.play("right")
		idle = "idleright"
	
	if not (Input.is_action_pressed('Left') or Input.is_action_pressed('Right') or Input.is_action_pressed('Up') or Input.is_action_pressed('Down')):
		_animated_sprite.play(idle)
	 
	move_and_slide()
	
	#round to viewport pixel, not scene pixel
	%AnimatedSprite2D.position = round(position*ceil(get_viewport().size.x/500.))/float(ceil(get_viewport().size.x/500.)) - position

