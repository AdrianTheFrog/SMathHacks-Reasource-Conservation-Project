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
	
	if Input.is_action_pressed('Up'):
		position.y -= speed * delta
		_animated_sprite.play("forward")
		idle = "idleforward"
		
	elif Input.is_action_pressed('Down'):
		position.y += speed * delta
		_animated_sprite.play("back")
		idle = "idleback"
		
	elif Input.is_action_pressed('Left'):
		position.x -= speed * delta
		_animated_sprite.play("left")
		idle = "idleleft"
		
	elif Input.is_action_pressed('Right'):
		position.x += speed * delta
		_animated_sprite.play("right")
		idle = "idleright"
		
	else:
		_animated_sprite.play(idle)

