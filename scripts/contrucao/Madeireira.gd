extends GridContainer


# Declare member variables here. Examples:
onready var erva = get_node("../../recursosContainer/Erva")
onready var madeira = get_node("../../recursosContainer/Madeira")
onready var qntLabel = get_node("LabelContainer/QntLabel")

var qnt = 0
var vlctMadeira = 1.5
var custo = {"erva":100, "madeira":0}


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	qntLabel.text = "%s" % qnt


func chngVlct():
	madeira.vlct = qnt * vlctMadeira


func temRecursos() -> bool:
	return custo["erva"] <= erva.qnt && custo["madeira"] <= madeira.qnt
