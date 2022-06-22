tool
extends Control

enum CellState {
	Empty,
	X,
	O
}

export(CellState) var state = CellState.Empty;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func update():
	match state:
		CellState.X:
			$O.hide()
			$X.show()
			pass
		CellState.O:
			$X.hide()
			$O.show();
			pass
		CellState.Empty:
			$X.hide();
			$O.hide();
			pass
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	update();
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	update();
	pass
