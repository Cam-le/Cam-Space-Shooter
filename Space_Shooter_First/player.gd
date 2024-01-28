extends Area2D


@export var speed = 100;

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("left"):
		position.x -= speed * delta;
	if Input.is_action_pressed("right"):
		position.x += speed * delta;		
	if Input.is_action_pressed("up"):
		position.y -= speed * delta;
	if Input.is_action_pressed("down"):
		position.y += speed * delta;


func _on_wall_area_entered(area):
	#position.x = 16
	#position.y = -420
	pass

