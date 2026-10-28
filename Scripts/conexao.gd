extends Node2D
class_name Conexao

var fio: Fio
@export var elemento: Elemento
const FIO = preload("uid://by6qdn5w8j2w2")


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mouse_event:= event as InputEventMouseButton
		if mouse_event.button_index == 1 and mouse_event.pressed:
			if Circuito.fio_conectando == null:
				cria_fio()
				print('a')
			else:
				conectar_fio()



func cria_fio() -> void:
	if fio != null:
		fio.queue_free()
	fio = FIO.instantiate() as Fio
	add_child(fio)
	var linha: Line2D = fio.linha
	linha.add_point(self.global_position)
	fio.conexao_1 = self
	linha.add_point(get_global_mouse_position())
	fio.a = true
	Circuito.fio_conectando = fio

func conectar_fio() -> void:
	fio = Circuito.fio_conectando
	if fio.conexao_1.elemento == elemento:
		return
	fio.a = false
	fio.conexao_2 = self
	var linha: Line2D = fio.linha
	linha.set_point_position(1, self.global_position)
	Circuito.fio_conectando = null
