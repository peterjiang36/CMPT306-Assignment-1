extends AnimatableBody2D
class_name Obstacle

var shrink_speed : float = 0.5


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionPolygon2D.scale = Vector2.ONE*10.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	$CollisionPolygon2D.scale -= Vector2.ONE * shrink_speed*delta
	
	if $CollisionPolygon2D.scale.x < 0.05:
		self.queue_free()
