extends Line2D
class_name Fio

@export var corrente: float = 0.0
@export var conexao_1: Conexao
@export var conexao_2: Conexao
var a: bool = false

func _ready() -> void:
	self.global_position = Vector2.ZERO

func _process(_delta: float) ->void:
	if a:
		self.set_point_position(1, get_global_mouse_position())
