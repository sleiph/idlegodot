extends GridContainer


# Declare member variables here. Examples:
#onready var recursos = get_parent().get_parent()
onready var qntLabel = get_node("qntLabelE")
onready var vlctLabel = get_node("vlctLabelE")

var qnt = 0
var vlct = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	qntLabel.text = str(qnt)
	vlctLabel.text = str(vlct) + " p/s"
