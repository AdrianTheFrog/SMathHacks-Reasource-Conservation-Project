extends TileMap
var temperature = FastNoiseLite.new()
var altitude = FastNoiseLite.new()
const width = 600/16
const height = 600/16
const pi = 3.14159

const tempNoiseScale = 5
const altNoiseScale = 2

func _ready():
	temperature.seed = randi()
	altitude.seed = randi()

func _process(_delta):
	generate_chunk(%Character.position)

func generate_chunk(pos):
	var tile_pos = local_to_map(pos)

	for x in range(width):
		for y in range(height):
			# use sin to weight the noise function more towards extremes
			var temp = floor((sin(temperature.get_noise_2d((tile_pos.x-width/2 + x)*tempNoiseScale,(tile_pos.y-height/2 + y)*tempNoiseScale)*pi/2)+1)*3.5)
			var alt = floor((sin(altitude.get_noise_2d((tile_pos.x-width/2 + x)*altNoiseScale,(tile_pos.y-height/2 + y)*altNoiseScale)*pi/2)+1)*5)
			set_cell(0,Vector2i(tile_pos.x-width/2 + x,tile_pos.y-height/2 + y),1, Vector2i(alt, temp))
