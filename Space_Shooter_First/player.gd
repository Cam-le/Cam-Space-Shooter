extends Area2D

@export var Bullet : PackedScene
@export var speed = 100
var hp = 1
var score

func _ready():
	score = 0
	$PlayerProjectile.queue_free()

func _process(delta):
	if Input.is_action_pressed("left"):
		position.x -= speed * delta
	if Input.is_action_pressed("right"):
		position.x += speed * delta	
	if Input.is_action_pressed("up"):
		position.y -= speed * delta
	if Input.is_action_pressed("down"):
		position.y += speed * delta
	if Input.is_action_just_released("shoot"):
		shoot()
		


func _on_wall_area_entered(area):
	#position.x = 16
	#position.y = -420
	pass

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform

func _on_area_entered(area):
	#$PlayerSprite.queue_free()
	pass
