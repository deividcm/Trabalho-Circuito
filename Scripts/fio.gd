extends Elemento
class_name Fio

@export var corrente: float = 0.0
@export var linha: Line2D 
var a: bool = false

func _ready() -> void:
	self.global_position = Vector2.ZERO

func _process(_delta: float) ->void:
	if a:
		linha.set_point_position(1, get_global_mouse_position())

func conectar(conexao: Conexao) -> void:
	pass
