extends Area2D

const falling_rate : float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += falling_rate * delta

	if position.y > 648.00:
		print("Gem Off of the screen")
		set_process(false)
		queue_free() 
