extends GridContainer


# Declare member variables here. Examples:
onready var erva = get_node("../../recursosContainer/Erva")
onready var qntLabel = get_node("LabelContainer/QntLabel")

var qnt = 0
var vlctErva = 2.0
var custo = {"erva":0}


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	qntLabel.text = "%s" % qnt
	
	
func chngVlct():
	erva.vlct = qnt * vlctErva


func temRecursos() -> bool:
	return custo["erva"] <= erva.qnt
