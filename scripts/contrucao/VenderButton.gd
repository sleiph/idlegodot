extends Button


# Declare member variables here. Examples:
onready var construcao = get_parent().get_parent()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.disabled = construcao.qnt <= 0


func _pressed():
	if construcao.qnt > 0:
		construcao.qnt -= 1
		construcao.chngVlct()
