extends WindowDialog
#popup_itemInfo.gd

var itemData = null
var vaultIndex = -1

signal itemDeletedOrMovedToVault
signal swappingItemWithAnother
signal updateStats
signal clearWildcardButton

onready var field_stat0 = $VBoxContainer/hbox_stats/vboxstats1/field_stat0
onready var field_stat1 = $VBoxContainer/hbox_stats/vboxstats1/field_stat1
onready var field_stat2 = $VBoxContainer/hbox_stats/vboxstats1/field_stat2
onready var field_stat3 = $VBoxContainer/hbox_stats/vboxstats2/field_stat3
onready var field_stat4 = $VBoxContainer/hbox_stats/vboxstats2/field_stat4
onready var field_stat5 = $VBoxContainer/hbox_stats/vboxstats2/field_stat5
onready var field_stat6 = $VBoxContainer/hbox_stats/vboxstats3/field_stat6
onready var field_stat7 = $VBoxContainer/hbox_stats/vboxstats3/field_stat7
onready var field_stat8 = $VBoxContainer/hbox_stats/vboxstats3/field_stat8

onready var field_itemName = $VBoxContainer/field_itemName
onready var field_itemID = $field_itemID
onready var sprite_itemIcon = $sprite_itemIcon

onready var field_slot = $VBoxContainer/HBoxContainer/VBoxContainer/field_slot
onready var field_noDrop = $VBoxContainer/HBoxContainer/VBoxContainer2/field_noDrop
onready var field_rarity = $VBoxContainer/HBoxContainer/VBoxContainer2/field_rarity

onready var field_improved = $VBoxContainer/field_improved

onready var field_armorOrDPS = $VBoxContainer/HBoxContainer/VBoxContainer/field_armorOrDPS

onready var field_classes = $VBoxContainer/field_classes

var classNameMap = {
	"any":"ANY",
	"warrior":"WAR",
	"cleric":"CLR",
	"druid":"DRU",
	"paladin":"PAL",
	"wizard":"WIZ",
	"ranger":"RNG",
	"rogue":"ROG",
	"necromancer":"NEC",
	"enchanter":"ENC",
	"bard":"BRD",
	"monk":"MNK"
	}

func _ready():
	field_stat0.hide()
	field_stat1.hide()
	field_stat2.hide()
	field_stat3.hide()
	field_stat4.hide()
	field_stat5.hide()
	field_stat6.hide()
	field_stat7.hide()
	field_stat8.hide()

func _set_vault_index(idx):
	vaultIndex = idx
	
func _set_data(data):
	itemData = data
	_populate_fields()
	
func _populate_fields():
	#window_title = itemData.name #old way that puts title outside the art for some reason
	field_itemName.text = itemData.name

	sprite_itemIcon.texture = load("res://sprites/items/" + itemData.icon)
	if (itemData.tint):
		sprite_itemIcon.modulate = tints[itemData.tint]
	else:
		sprite_itemIcon.modulate = Color(1,1,1,1)
		
	field_slot.text = itemData.slot.capitalize()

	if (!itemData.noDrop):
		field_noDrop.text = "Tradeable"
	else:
		field_noDrop.text = "Binds on equip"
		
	if (itemData.rarity):
		field_rarity.text = str(itemData.rarity).capitalize()
		if (itemData.rarity == "uncommon"):
			field_rarity.add_color_override("font_color", colors.green)
		elif (itemData.rarity == "rare"):
			field_rarity.add_color_override("font_color", colors.blue) 
		elif (itemData.rarity == "epic"):
			field_rarity.add_color_override("font_color", colors.pink) 
	
	if (itemData.improved):
		field_improved.text = "Improved " + itemData.improvement
	else:
		field_improved.hide()
			
	#print("popup_itemInfo.gd - itemID: " + str(itemData.itemID))
	if (itemData.itemID):
		field_itemID.text = str(itemData.itemID)
		field_itemID.add_color_override("font_color", colors.pink) 
		
	#figure out what stats this item gives
	if (itemData.slot != "tradeskill" && itemData.slot != "quest"):
		#an item gives armor or dps, but not both
		if (itemData.dps > 0):
			field_armorOrDPS.text = str(itemData.dps) + " DPS"
		elif (itemData.armor > 0):
			field_armorOrDPS.text = str(itemData.armor) + " Armor"
		else:
			field_armorOrDPS.hide()
			
		#there might be multiple class restrictions, so build a string
		var restrictionsStr = ""
		for i in range(itemData.classRestrictions.size()):
			if (itemData.classRestrictions[i] != null):
				# Behind the scenes, we use the full class name. But on an item
				# we use an abbreviation. Those abbreviations are only for display, 
				# so do the conversion here.
				var classNameLong = itemData.classRestrictions[i].to_lower()
				#print(classNameMap[classNameLong])
				restrictionsStr += str(classNameMap[classNameLong]) + " "
		#$field_classes.text = "Class: " + str(itemData.classRestriction).capitalize()
		field_classes.text = "Classes: " + restrictionsStr
	
		var stats = []
		if (itemData.hpRaw > 0):
			stats.append("+" + str(itemData.hpRaw) + " hp")
		
		if (itemData.manaRaw > 0):
			stats.append("+" + str(itemData.manaRaw) + " mana")
		
		if (itemData.strength > 0):
			stats.append("+" + str(itemData.strength) + " STR")
			
		if (itemData.defense > 0):
			stats.append("+" + str(itemData.defense) + " DEF")
		
		if (itemData.intelligence > 0):
			stats.append("+" + str(itemData.intelligence) + " INT")
		
		if (itemData.regenRateHP > 0):
			stats.append("+" + str(itemData.regenRateHP) + " HP regen")
			
		if (itemData.regenRateMana > 0):
			stats.append("+" + str(itemData.regenRateMana) + " Mana regen")
			
		#display them (should just be the ones greater than 0)
		for i in range(stats.size()):
			find_node("field_stat" + str(i)).text = stats[i]
			find_node("field_stat" + str(i)).show()
			#get_node("field_stat" + str(i)).text = stats[i]
			#get_node("field_stat" + str(i)).show()
	else:
		field_armorOrDPS.hide()
		field_classes.hide()
		
func _set_buttons(showActionButton, showTrashButton, actionButtonStr):
	if (showActionButton):
		$button_action.show()
		$button_action.text = actionButtonStr
	else:
		$button_action.hide()
		
	if (showTrashButton):
		$button_trash.show()
	else:
		$button_trash.hide()
	
func _on_button_trash_pressed():
	emit_signal("itemDeletedOrMovedToVault")
	if (global.currentMenu == "heroPage"):
		#the current hero is available globally, so get at the item that way
		#and empty out that part of the hero's equipment object 
		if (global.selectedHero["equipment"][itemData.slot] != null):
			global.selectedHero["equipment"][itemData.slot] = null
			itemData = null
			global.selectedHero.update_hero_stats()
			emit_signal("updateStats") #caught by itemButton.gd
	if (global.currentMenu == "bedroomPage"):
		# remove this item from the bedroom inventory
		print("popup_itemInfo.gd: implement item deletion from bedroom page")
	elif (global.currentMenu == "vault"):
		global.vault.delete_item(vaultIndex)
	self.hide()

func _is_tradeskill_menu():
	if (global.currentMenu == "blacksmithing" || 
		global.currentMenu == "chronomancy" || 
		global.currentMenu == "alchemy" ||
		global.currentMenu == "woodcraft" ||
		global.currentMenu == "tailoring" ||
		global.currentMenu == "jewelcraft"):
			return true
	else:
		return false
	
		
func _on_button_moveItem_pressed():
	if (global.currentMenu == "vault"):
		# Performing a swap of two vault items 
		# This is the code for the SOURCE item 
		self.hide() #hide the popup
		emit_signal("swappingItemWithAnother") #caught by itemButton.gd 
	elif (_is_tradeskill_menu()):
		# Give an item back from tradeskill menu to vault 
		var wildcardItemOnDeck = global.tradeskills[global.currentMenu].wildcardItemOnDeck
		if (wildcardItemOnDeck):
			util.remove_item_tradeskill()
			emit_signal("clearWildcardButton")
		else:
			#take the item and "give" it to the tradeskill wildcard item bucket
			util.give_item_tradeskill(itemData.itemID)
			get_tree().change_scene("res://menus/crafting.tscn")
		self.hide() # hide the popup 
	elif (global.currentMenu == "vaultViaBedroomPage"):
		# Use case: Moving item from vault to bedroom
		util.transfer_item_from_vault_to_bedroom(vaultIndex)
		global.currentMenu = "bedroomPage"
		get_tree().change_scene("res://menus/bedroomPage.tscn") 
	elif (global.currentMenu == "bedroomPage"):
		# Use case: move item from bedroom (any bedroom) back to the vault
		var slot = itemData.slot
		if (slot == "bed"):
			slot = global.whichBed
		
		emit_signal("itemDeletedOrMovedToVault")
				
		var xferMe = global.bedrooms[global.selectedBedroom]["inventory"][slot]
		util.transfer_item_from_bedroom_to_vault(xferMe)
		self.hide() # hide the popup
	elif (global.currentMenu == "heroPage"):
		emit_signal("itemDeletedOrMovedToVault") #caught by itemButton.gd 
		# Player is moving this item from hero to vault
		var xferMe = global.selectedHero["equipment"][itemData.slot]
		util.transfer_item_from_hero_equip_to_vault(xferMe)
		global.selectedHero.update_hero_stats()
		emit_signal("updateStats") #caught by itemButton.gd
		self.hide()
	elif (global.currentMenu == "vaultViaHeroPage"):
		# Player is moving this item from the vault to a hero 
		util.transfer_item_from_vault_to_hero_equip(vaultIndex)
		global.currentMenu = "heroPage"
		get_tree().change_scene("res://menus/heroPage.tscn")
	else:
		print("[error] Unhandled currentMenu setting: " + global.currentMenu)