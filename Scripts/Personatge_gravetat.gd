extends CharacterBody2D


var gravetat := Vector2.DOWN * 980
var velocitat := 200
var SALT := -1000
var salts_disponibles = MAX_SALTS
var MAX_SALTS = 3

func _process(delta: float) -> void:
	var dx := Input.get_axis("moure_esquerra", "moure_dreta")
	velocity.x = 0
	velocity.x += dx * velocitat
	if Input.is_action_just_pressed("salta") and salts_disponibles > 0:
		velocity.y += SALT
		salts_disponibles -= 1

	velocity  += gravetat * delta
	move_and_slide()
	if is_on_floor():
		salts_disponibles = MAX_SALTS
