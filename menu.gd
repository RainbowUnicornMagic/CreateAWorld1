extends CanvasLayer
@onready var things: Panel = $Things
const BALL = preload("res://menu things/ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	things.visible = false # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_add_button_pressed() -> void:
	things.visible = !things.visible


func _on_ball_button_pressed() -> void:
	
	var ball = BALL.instantiate()
	var world = get_node("/root/world")
	world.add_child(ball)
	var girl : Node3D = get_node("/root/Game/player girl")
	var ball_position = girl.global_position
	ball_position =+ Vector3(0,2,-1)
	ball.set_global_position(ball_position)
