extends CharacterBody2D

@export var speed: float = 60.0

func _physics_process(_delta: float) -> void:
    # Busca al jugador en la escena
    var jugador = get_node("../jugador")
    
    # Calcula dirección hacia el jugador
    var direccion = (jugador.position - position).normalized()
    
    # Se mueve hacia el jugador
    velocity = direccion * speed
    move_and_slide()