extends Container

func _ready():
	pass

func _render_fields(ingredientData):
	$field_name.text = ingredientData.name
	$sprite_icon.texture = load("res://sprites/items/" + ingredientData.icon)
	
func _display_in_vault(ingredientData):
	$field_name.text = ingredientData.name + " (" + str(ingredientData.count) + ")"
	_set_white()
	$sprite_icon.texture = load("res://sprites/items/" + ingredientData.icon)
	
func _clear_fields():
	$field_name.text = ""
	$sprite_icon.texture = null
	
func _set_green():
	$field_name.add_color_override("font_color", Color(.062, .90, .054, 1)) #16,230,14,1 green
	
func _set_red():
	$field_name.add_color_override("font_color", Color(.94, .0078, .0078, 1)) #242,2,2,1 green
	
func _set_white():
	$field_name.add_color_override("font_color", global.colorWhite) #242,2,2,1 green