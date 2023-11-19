extends GridContainer

# Declare member variables here. Examples:
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
