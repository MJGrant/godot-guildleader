extends "room.gd"
#fletching.gd
#inherits all of room's methods 

func _ready():
	if (global.tradeskills["fletching"].hero):
		$button_staffCraft.text = "Craft"
	else:
		$button_staffCraft.text = "Staff"

func _on_button_staffCraft_pressed():
	global.currentMenu = "fletching"
	if (!global.tradeskills["fletching"].hero):
		get_tree().change_scene("res://menus/heroSelect.tscn")
	else:
		get_tree().change_scene("res://menus/crafting.tscn")