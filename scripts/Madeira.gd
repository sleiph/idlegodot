extends GridContainer

# Declare member variables here. Examples:
#onready var recursos = get_node("jogoContainer")
onready var recursos = get_parent().get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	print(recursos)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(recursos.tempo)
