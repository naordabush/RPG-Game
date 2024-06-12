class_name State_walk extends State

@export var move_speed : float = 100.0
@onready var idle : State = $"../Idle"

## whats happens when the player enters this state?
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass
	
## whats happens when the player exits this state?
func Exit() -> void:
	pass
	
## whats happens during the _process update in this state?
func Process(_delta : float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
	return null
		
## whats happens during the _physics_process update in this state?
func Physics(_delta : float ) -> State:
		return null
		
## whats happens with input events in this state?
func HandleInput(_event : InputEvent ) -> State:
		return null
