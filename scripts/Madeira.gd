extends GridContainer


# Declare member variables here. Examples:
#onready var recursos = get_parent().get_parent()
onready var qntLabel = get_node("qntLabelM")
onready var vlctLabel = get_node("vlctLabelM")

var qnt = 0
var vlct = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#qntLabel.text = "[center]%s[/center]" % qnt
	qntLabel.text = str(qnt)
	vlctLabel.text = str(vlct) + " p/s"
