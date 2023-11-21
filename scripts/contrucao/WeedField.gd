extends GridContainer


# Declare member variables here. Examples:
onready var erva = get_node("../../recursosContainer/Erva")
onready var qntLabel = get_node("LabelContainer/QntLabel")
onready var custoLabel = get_node("LabelContainer/CustoLabel")

var qnt = 0
var vlctErva = 2.0
var custo = {"erva":5.0}
var custoRelativoErva = 5.0


# Called when the node enters the scene tree for the first time.
func _ready():
	qntLabel.text = "%s" % qnt
	custoLabel.text = "%s" % custoRelativoErva


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#qntLabel.text = "%s" % qnt


func gastaRecursos():
	erva.qnt -= custoRelativoErva


func chngVlct():
	erva.vlct = qnt * vlctErva
	qntLabel.text = "%s" % qnt
	custoLabel.text = "%s" % custoRelativoErva


func temRecursos() -> bool:
	custoRelativoErva = custo["erva"] + (qnt * 1.2)
	return custoRelativoErva <= erva.qnt
