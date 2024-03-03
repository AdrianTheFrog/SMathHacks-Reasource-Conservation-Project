extends CanvasModulate

const daynightdata = [[76,162,230,255,230,162],[91,100,230,255,230,100],[133,108,230,255,230,108]]

func _process(_delta):
	color = Color8(find_color(0),find_color(1),find_color(2))

func find_color(channel):
	var ltime = fmod(GlobalVars.tod, 4.0)/4
	var a = (int(floor(GlobalVars.tod/4)))%6
	var b = (int(floor((GlobalVars.tod+4)/4)))%6
	return int((daynightdata[channel][a] * (1 - ltime) + daynightdata[channel][b] * ltime))
