extends Node2D
#roster.gd
#makes a long list of every hero in the player's guild
#individual heroes can be clicked on to go to their hero page 

func _ready():
	$field_guildName.text = global.guildName
	$field_guildMemberCount.text = str(global.guildRoster.size()) + "/" + str(global.guildCapacity)
	
	var buttonX = 0
	var buttonY = 0
	#draw a hero button for each hero in the roster
	for i in range(global.guildRoster.size()):
		#print(global.guildRoster[i]) #print all heroes (debug)
		var heroButton = preload("res://menus/heroButton.tscn").instance()
		heroButton.set_hero_data(global.guildRoster[i])
		heroButton.set_position(Vector2(buttonX, buttonY))
		$scroll_roster/vbox.add_child(heroButton)
		buttonY += 100

func _on_back_button_pressed():
	get_tree().change_scene("res://main.tscn")

func _on_button_renameGuild_pressed():
	get_node("confirm_rename_dialog").popup()

func _on_rename_guild_confirmed():
	var newName = $confirm_rename_dialog/LineEdit.text
	print("roster.gd: Renamed guild to: " + newName)
	global.guildName = newName
	#redraw the name display field on the hero page with the new name
	$field_guildName.text = global.guildName