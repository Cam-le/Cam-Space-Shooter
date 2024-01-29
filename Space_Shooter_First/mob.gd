extends StaticBody2D

@export var Bullet : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	$MobProjectile.queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform


func _on_shoot_timer_timeout():
	shoot()
