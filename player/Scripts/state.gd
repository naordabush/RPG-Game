class_name State extends Node

## stores a repfrance to the player that this state belongs to
static var player: Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

## whats happens when the player enters this state?
func Enter() -> void:
	pass
	
## whats happens when the player exits this state?
func Exit() -> void:
	pass
	
## whats happens during the _process update in this state?
func Process(_delta : float ) -> State:
		return null
		
## whats happens during the _physics_process update in this state?
func Physics(_delta : float ) -> State:
		return null
		
## whats happens with input events in this state?
func HandleInput(_event : InputEvent ) -> State:
		return null
