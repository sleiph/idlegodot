extends GridContainer

# Declare member variables here. Examples:
onready var erva = get_node("recursosContainer/Erva")
onready var madeira = get_node("recursosContainer/Madeira")

var timer = Timer.new()
var tempo = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.connect("timeout",self,"tick")
	timer.wait_time = 0.1
	add_child(timer)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func tick():
	tempo += 0.1
	erva.qnt += erva.vlct / 10
	madeira.qnt += madeira.vlct / 10
