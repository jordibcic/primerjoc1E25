extends Area2D



func _on_body_entered(body: Node2D) -> void:
	$ColorRect.color = Color(0,1,0)

#TODO: discutir connexions des de l'escena principal o l'escena concreta.
