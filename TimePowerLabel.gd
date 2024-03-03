extends Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = GlobalVars.stime + " " + GlobalVars.spower + " KW demand"
