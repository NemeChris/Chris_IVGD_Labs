extends Node2D

@export var speed = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("x position for %s is %d" % [self.name, position.x])
	print("y position for %s is %d" % [self.name, position.y])
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
	if Input.is_action_pressed("ui_down"):
		position.y += speed
	if Input.is_action_pressed("ui_right"):
		position.x += speed
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
