extends Node

var heroGenerator = load("res://heroGenerator.gd").new()

#todo: globalize these
var mainRoomMinX = 110
var mainRoomMaxX = 360
var mainRoomMinY = 250
var mainRoomMaxY = 410

var questTimeLeft = -1

func _ready():
	global.currentMenu = "main"
	randomize()
	$HUD.update_currency(global.softCurrency, global.hardCurrency)
	
	var roomsLayer = $screen/rooms 
	#spawn the player's rooms (use roomOrder array)
	var roomX = -1
	var roomY = 75 
	for i in range(global.roomOrder.size()):
		var roomInstance = global.roomOrder[i].instance()
		roomInstance.set_position(Vector2(roomX,roomY))
		roomInstance.display_room_name("coded name here")
		roomsLayer.add_child(roomInstance)
		if (i == global.roomOrder.size() - 2):
			roomY -= 192 #for placing the taller-than-a-room top edge piece
		else:
			roomY -= 128
			
	#place the "add a room" button above the last placed piece
	$screen/button_addRoom.set_position(Vector2(132, roomY + 200))
	#display the cost to build a new room
	$screen/button_addRoom/field_addRoomButtonLabel.text = "BUILD A NEW ROOM \n" + str(global.newRoomCost[global.roomCount]) + " coins"
	
	# Generate X number of heroes (default guild members for now)
	if (!global.initDone):
		#Todo: maybe this belongs in global? 
		var heroQuantity = 3
		for i in range(heroQuantity):
			heroGenerator.generate(global.guildRoster) #returns nothing, just puts them in the array reference that's passed in

		var unrecruitedQuantity = 2
		for i in range(unrecruitedQuantity):
			heroGenerator.generate(global.unrecruited)
			
		#verify they were generated 
		print("Guild members are:")
		for i in range(heroQuantity):
			print(global.guildRoster[i])
			print("")
		
		print("Unrecruited peeps are:")
		for i in range(unrecruitedQuantity):
			print(global.unrecruited[i].heroName)
			

		global.initDone = true
		#use the hero data to create individual hero scene instances
		draw_heroes()
	else:
		#use the hero data to create individual hero scene instances
		draw_heroes()

func _on_Quests_pressed():
	global.currentMenu = "quests"
	get_tree().change_scene("res://menus/questSelect.tscn");
	
func _on_Roster_pressed():
	global.currentMenu = "roster"
	get_tree().change_scene("res://menus/roster.tscn");

func _process(delta):
	if (global.questActive):
		$HUD/button_collectQuest/field_questCountdown.set_text(str(global.questTimer.time_left))	
	
func draw_heroes():
	var heroX = -1
	var heroY = -1

	for i in range(global.guildRoster.size()):
		heroX = rand_range(mainRoomMinX, mainRoomMaxX)
		heroY = rand_range(mainRoomMinY, mainRoomMaxY)
	
		#only draw heroes who are "available" (ie: at home) 
		if (global.guildRoster[i].available):
			var heroScene = preload("res://hero.tscn").instance()
			heroScene.set_position(Vector2(heroX, heroY))
			heroScene.set_instance_data(global.guildRoster[i])
			add_child(heroScene)
	
	#draw unrecruited heroes outside the base
	for i in range(global.unrecruited.size()):
		heroX = rand_range(150, 380)
		heroY = rand_range(650, 820)
	
		#only draw heroes who are "available" (ie: at home) 
		var heroScene = preload("res://hero.tscn").instance()
		heroScene.set_position(Vector2(heroX, heroY))
		heroScene.set_instance_data(global.unrecruited[i])
		add_child(heroScene)

func _on_button_collectQuest_pressed():
	pass


func _on_button_addRoom_pressed():
	get_tree().change_scene("res://menus/buildNewRoom.tscn")
