extends Node2D
@onready var _animated_sprite = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	scale= Vector2(1.2,1.2)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var speed = 100.0
	if Input.is_action_pressed("Down"):
		position.y += speed * delta
		_animated_sprite.play("back")
	if Input.is_action_pressed("Up"):
		position.y -= speed * delta
		_animated_sprite.play("forward")
	if Input.is_action_pressed("Left"):
		position.x -= speed * delta
		_animated_sprite.play("left")
	if Input.is_action_pressed("Right"):
		position.x += speed * delta
		_animated_sprite.play("right")
	if Input.is_action_just_released("Up"):
		_animated_sprite.play("stillforward")
	if Input.is_action_just_released("Down"):
		_animated_sprite.play("stillback")
	if Input.is_action_just_released("Left"):
		_animated_sprite.play("stillleft")
	if Input.is_action_just_released("Right"):
		_animated_sprite.play("stillright")

	
