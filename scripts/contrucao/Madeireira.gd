extends GridContainer


# Declare member variables here. Examples:
onready var erva = get_node("../../recursosContainer/Erva")
onready var madeira = get_node("../../recursosContainer/Madeira")
onready var qntLabel = get_node("LabelContainer/QntLabel")
onready var custoLabel = get_node("LabelContainer/CustoLabel")

var qnt = 0.0
var vlctMadeira = 1.5
var custo = {"erva":100, "madeira":0.0} #Criar uma classe pra usar aqui: nome/recurso custo base e multiplicador
var custoRelativoErva = 100.0
var custoRelativoMadeira = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	qntLabel.text = "%s" % qnt
	custoLabel.text = "%s" % custoRelativoErva


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func gastaRecursos():
	erva.qnt -= custoRelativoErva
	madeira.qnt -= custoRelativoMadeira


func chngVlct():
	madeira.vlct = qnt * vlctMadeira
	qntLabel.text = "%s" % qnt
	custoLabel.text = "%s" % custoRelativoErva


func temRecursos() -> bool:
	custoRelativoErva = custo["erva"] + (qnt * 1.2)
	custoRelativoMadeira = custo["madeira"]
	return custoRelativoErva <= erva.qnt && custoRelativoMadeira <= madeira.qnt
