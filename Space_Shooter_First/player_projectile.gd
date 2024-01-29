extends Area2D

@export var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= transform.y * speed * delta


func _on_body_entered(body):
	body.queue_free()
