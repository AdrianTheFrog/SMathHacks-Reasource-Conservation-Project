extends Node

var noise = FastNoiseLite.new()

const data = [[70,60,75,75,75,75],[70,60,82,85,90,90],[80,80,95,90,85,95],[100,85,100,110,115,115]]
var time = 0.0 #time measured in hours
#var season = 0
#var tod = 0.0
var stod = ""
var sseason = ""
var sday = ""
#var stime = ""
#var spower = ""
#var power = ""

const speed = 0.2 # in game hours per real second
const daysInSeason = 6

func _process(delta):
	time += delta*speed
	#time of day
	GlobalVars.tod = fmod(time,24) 
	GlobalVars.season = floor(fmod((time/24)/daysInSeason, 4)) # season should go 0 -> 1 -> 2 -> 3 -> 0 ...
	
	if floor(GlobalVars.tod) == 0:
		stod = "12:" + str(floor((fmod(GlobalVars.tod,1) * 60)/15)*15).lpad(2,"0") + " AM"
	elif floor(GlobalVars.tod) < 13:
		stod = str(floor(GlobalVars.tod)) + ":" + str(floor((fmod(GlobalVars.tod,1) * 60)/15)*15).lpad(2,"0") + " AM"
	else:
		stod = str(floor(GlobalVars.tod)-12) + ":" + str(floor((fmod(GlobalVars.tod,1) * 60)/15)*15).lpad(2,"0") + " PM"
	
	sseason = ["Spring","Summer","Fall","Winter"][GlobalVars.season]
	
	sday = str(floor(time/24))
	
	GlobalVars.stime = "Day " + sday + ", " + sseason + " " + stod
	GlobalVars.spower = str(round(get_energy(GlobalVars.season, time)*100)/100).pad_decimals(2)
	
	#print(GlobalVars.stime + " " + GlobalVars.spower + " kilowatts")


func get_energy(s, t):
	var ltime = fmod(t, 4.0)/4
	var a = (int(floor(t/4)))%6
	var b = (int(floor((t+4)/4)))%6
	return data[s][a] * (1 - ltime) + data[s][b] * ltime + noise.get_noise_1d(100 * t)
