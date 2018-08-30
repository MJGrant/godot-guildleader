extends WindowDialog
#popup_itemInfo.gd

var itemData = null
var vaultIndex = -1

signal itemDeletedOrMovedToVault
signal swappingItemWithAnother

func _ready():
	if (global.currentMenu == "vault"):
		$button_moveItem.text = "Move"
	elif (global.currentMenu == "heroPage"):
		$button_moveItem.text = "Put in vault"
	elif (global.currentMenu == "vaultViaHeroPage"):
		$button_moveItem.text = "Equip"
		
	$field_stat0.hide()
	$field_stat1.hide()
	$field_stat2.hide()
	$field_stat3.hide()
	$field_stat4.hide()
	$field_stat5.hide()

func _set_vault_index(idx):
	vaultIndex = idx
	
func _set_data(data):
	itemData = data
	_populate_fields()
	
func _populate_fields():
	window_title = itemData.name
	
	#an item gives armor or dps, but not both
	if (itemData.dps > 0):
		$field_armorOrDPS.text = str(itemData.dps) + " DPS"
	elif (itemData.armor > 0):
		$field_armorOrDPS.text = str(itemData.armor) + " Armor"
	else:
		$field_armorOrDPS.hide()
		
	$sprite_itemIcon.texture = load("res://sprites/items/" + itemData.icon)
	$field_slot.text = itemData.slot.capitalize()
	
	#classes will eventually be multiples
	$field_classes.text = "Classes: " + str(itemData.classRestriction).capitalize()
	
	if (!itemData.noDrop):
		$field_noDrop.text = "Tradeable"
	else:
		$field_noDrop.text = "Binds on equip"
	
	#figure out what stats this item gives
	var stats = []
	if (itemData.hpRaw > 0):
		stats.append("+" + str(itemData.hpRaw) + " hp")
	
	if (itemData.manaRaw > 0):
		stats.append("+" + str(itemData.manaRaw) + " mana")
	
	if (itemData.stamina > 0):
		stats.append("+" + str(itemData.stamina) + " STA")
		
	if (itemData.defense > 0):
		stats.append("+" + str(itemData.defense) + " DEF")
	
	if (itemData.intelligence > 0):
		stats.append("+" + str(itemData.intelligence) + " INT")
	
	#display them (should just be the ones greater than 0)
	for i in range(stats.size()):
		get_node("field_stat" + str(i)).text = stats[i]
		get_node("field_stat" + str(i)).show()
	
func _on_button_trash_pressed():
	#print("trashing this item: " + itemData.name)
	emit_signal("itemDeletedOrMovedToVault")
	#todo: this might need to distinguish between whether we're on the hero page or the vault
	if (global.currentMenu == "heroPage"):
		#the current hero is available globally, so get at the item that way
		#and empty out that part of the hero's equipment object 
		if (global.selectedHero["equipment"][itemData.slot] != null):
			global.selectedHero["equipment"][itemData.slot] = null
			itemData = null
	elif (global.currentMenu == "vault"):
		#here we have to pick it out of the global equipment array 
		if (global.guildItems[vaultIndex]):
			global.guildItems[vaultIndex] = null
	self.hide()

func _on_button_moveItem_pressed():
	if (global.currentMenu == "vault"):
		#in an item swap in the vault, this is the code for the SOURCE item 
		#it emits a signal caught by itemButton 
		#but it also makes a record of its index so vault.gd can update the button art 
		self.hide() #hide the popup
		emit_signal("swappingItemWithAnother") #caught by itemButton.gd 
	else:
		#this button moves an item to the vault or gives it to the currently selected hero
		#depending on which menu the player came here from 
		emit_signal("itemDeletedOrMovedToVault")
		
		#Use case 1: player is moving this item from hero to vault
		if (global.selectedHero["equipment"][itemData.slot] != null):
			#todo: make sure the vault has room for it first 
			for i in range(global.guildItems.size()):
				if (global.guildItems[i] == null):
					#finds first open null spot and puts the item there
					global.guildItems[i] = global.selectedHero["equipment"][itemData.slot]
					break
			global.selectedHero["equipment"][itemData.slot] = null
			itemData = null
			self.hide()
			
		#Use case 2: the player is moving this item from the vault to a hero 
		elif (global.selectedHero["equipment"][itemData.slot] == null):
			#put it in the hero's equipment slot
			global.selectedHero["equipment"][itemData.slot] = global.guildItems[vaultIndex]
			global.guildItems[vaultIndex] = null #null it out of the vault, it's now on the hero
			#go back to hero page
			global.currentMenu = "heroPage"
			get_tree().change_scene("res://menus/heroPage.tscn")  #todo: filter by item type 