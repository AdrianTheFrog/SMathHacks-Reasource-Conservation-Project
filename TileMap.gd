extends TileMap
var moisture = FastNoiseLite.new()
var temperature = FastNoiseLite.new()
var altitude = FastNoiseLite.new()
var width = 500/16
var height = 500/16

func _ready():
	moisture.seed = randi()
	temperature.seed = randi()
	altitude.seed = randi()

func _process(_delta):
	generate_chunk(%Character.position)

func generate_chunk(pos):
	var tile_pos = local_to_map(pos)
	for x in range(width):
		for y in range(height):
			var moist = moisture.get_noise_2d(tile_pos.x-width/2 + x,tile_pos.y-height/2 + y)*10
			var temp = temperature.get_noise_2d(tile_pos.x-width/2 + x,tile_pos.y-height/2 + y)*10
			var alt = altitude.get_noise_2d(tile_pos.x-width/2 + x,tile_pos.y-height/2 + y)*10
			set_cell(0,Vector2i(tile_pos.x-width/2 + x,tile_pos.y-height/2 + y),1, Vector2(round((moist+10)/5), round((temp+10)/5)))

 
