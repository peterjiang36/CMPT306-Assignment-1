extends Node
class_name SpawnManager

@export var spawn_rate : float = 0.5
@export var next_time_to_spawn: float = 0.0
@export var obstacle_scene : PackedScene
@export var target_node: Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assert(obstacle_scene)
	assert(target_node)
	next_time_to_spawn = Time.get_unix_time_from_system() + (1.0/spawn_rate)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Time.get_unix_time_from_system() >= next_time_to_spawn:
		var new_obstacle := obstacle_scene.instantiate()
		target_node.add_child(new_obstacle)
		next_time_to_spawn = Time.get_unix_time_from_system() + (1.0/spawn_rate)
