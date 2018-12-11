extends Node
var camps={"test999":{"campId":"test999","name":"XP fest for lots of XP!!!","description":"\"This is a test quest that gives loads of XP so Mandi doesn't have to wait long while testing!\"","level":1,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"test09":{"campId":"test09","name":"Rats in the Cellar","description":"Farmer Brownwheat needs help clearing rats from his cellar. It's not glamorous work, but it pays in real coin and you can keep any treasure you find!","level":1,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsHarder","spawnPoint3":"ratsHarder","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsHarder","spawnPoint3TableName":"ratsHarder"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"test10":{"campId":"test10","name":"The Rat King","description":"Farmer Brownwheat placed a bounty of 50 coins on the gigantic rat that's been ruining his crops.","level":1,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"goblin01":{"campId":"goblin01","name":"Cleaning out the Goblin Caves","description":"Venture into the musty goblin caves to the east and collect any treasure they might be hoarding.","level":2,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"goblin02":{"campId":"goblin02","name":"The Goblin Warlord's Treasure Hoard","description":"Journey to the depths of the goblin caves and find the Goblin Warlord's treasure hoard.","level":2,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_guild01":{"campId":"camp_guild01","name":"Guildhall Cellars","description":"The guildhall's vaults are full of rats! Set up camp and kill as many as you can.","level":1,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_guild02":{"campId":"camp_guild02","name":"Spiders in the Hallways","description":"The guildhall's main corridor is full of spiders. Kill 20 of them and report back to the guild leader.","level":1,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"spidersCommon","spawnPoint2":"spidersCommon","spawnPoint3":"spidersRare","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"spidersCommon","spawnPoint2TableName":"spidersCommon","spawnPoint3TableName":"spidersRare"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_guild03":{"campId":"camp_guild03","name":"The Guildhall Rat King","description":"Find the rat king and bring proof of his demise to the guild leader.","level":1,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest01":{"campId":"camp_forest01","name":"Rabid Bats","description":"Overgrown bats scare passersby on the outskirts of the Tackbank Forest. Thinning their numbers is the perfect task for new adventurers.","level":1,"durationShort":600,"durationMedium":1800,"durationLong":7200,"respawnRate":3,"groupSize":2,"spawnPoint1":"batsForNewbies","spawnPoint2":"batsForNewbies","spawnPoint3":"batsForNewbies","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"batsForNewbies","spawnPoint2TableName":"batsForNewbies","spawnPoint3TableName":"batsForNewbies"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest02":{"campId":"camp_forest02","name":"Wolves of Tackbank Forest","description":"Large, overly aggressive wolves patrol the entrance to the Tackbank Forest. Defeat as many as you can and establish your guild as defenders of the realm.","level":3,"durationShort":1800,"durationMedium":3600,"durationLong":3600,"respawnRate":3,"groupSize":2,"spawnPoint1":"wolvesForNewbies","spawnPoint2":"wolvesForNewbies","spawnPoint3":"wolvesForNewbies","bgFilepath":"forest02.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"wolvesForNewbies","spawnPoint2TableName":"wolvesForNewbies","spawnPoint3TableName":"wolvesForNewbies"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest03":{"campId":"camp_forest03","name":"Spider Caverns","description":"Big and small, but mostly big. This elaborate cavern system is home to thousands of bloodthirsty spiders.","level":3,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":3,"groupSize":3,"spawnPoint1":"spiderCaverns","spawnPoint2":"spiderCaverns","spawnPoint3":"spiderCaverns","bgFilepath":"forest03.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"spiderCaverns","spawnPoint2TableName":"spiderCaverns","spawnPoint3TableName":"spiderCaverns"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest04":{"campId":"camp_forest04","name":"Goblin Outlaws","description":"You'll know them by their makeshift tents and foul stench. The only good goblin is a dead goblin.","level":4,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":3,"spawnPoint1":"goblinsCommon","spawnPoint2":"goblinsCommon","spawnPoint3":"goblinsCommon","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"goblinsCommon","spawnPoint2TableName":"goblinsCommon","spawnPoint3TableName":"goblinsCommon"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest05":{"campId":"camp_forest05","name":"Direwolves and Dreadwolves","description":"Dreadwolves are larger and meaner than typical wolves, and defeating them will make the forest safer for passersby.","level":5,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"direwolves","spawnPoint2":"direwolves","spawnPoint3":"direwolves","bgFilepath":"forest01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"direwolves","spawnPoint2TableName":"direwolves","spawnPoint3TableName":"direwolves"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest06":{"campId":"camp_forest06","name":"The Fairie Guard","description":"Formidable foes, these fairies are. Engage in battle and prove your worthiness.","level":5,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"fairieDefenders","spawnPoint2":"fairieDefenders","spawnPoint3":"fairieDefenders","bgFilepath":"forest07.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"fairieDefenders","spawnPoint2TableName":"fairieDefenders","spawnPoint3TableName":"fairieDefenders"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_forest07":{"campId":"camp_forest07","name":"Yizma the Fairie Queen","description":"A wicked fairie queen lures adventurers to their doom deep in the Tackbank Forest. Seek her out and claim her treasure for yourself.","level":7,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"fairieDefenders","spawnPoint2":"fairieQueen","spawnPoint3":"fairieDefenders","bgFilepath":"forest07.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"fairieDefenders","spawnPoint2TableName":"fairieQueen","spawnPoint3TableName":"fairieDefenders"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast01":{"campId":"camp_coast01","name":"Shoach Crabs","description":"Test your mettle against these overgrown crabs.","level":6,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastCrabs","spawnPoint2":"coastCrabs","spawnPoint3":"coastCrabs","bgFilepath":"coast01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastCrabs","spawnPoint2TableName":"coastCrabs","spawnPoint3TableName":"coastCrabs"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast02":{"campId":"camp_coast02","name":"The Tadloc Threat","description":"Tadlocs are raiding nearby farms and villages! Head out to their encampments on the shore and thin their numbers.","level":7,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastTadlocs","spawnPoint2":"coastTadlocs","spawnPoint3":"coastTadlocs","bgFilepath":"coast02.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastTadlocs","spawnPoint2TableName":"coastTadlocs","spawnPoint3TableName":"coastTadlocs"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast03":{"campId":"camp_coast03","name":"The Tadloc King","description":"The Tadloc King has ordered his underlings to raid every nearby farm and village. Defeat the Tadloc King and put an end to the terror.","level":8,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastTadlocsKing","spawnPoint2":"coastTadlocsKing","spawnPoint3":"coastTadlocsKing","bgFilepath":"coast03.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastTadlocsKing","spawnPoint2TableName":"coastTadlocsKing","spawnPoint3TableName":"coastTadlocsKing"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast04":{"campId":"camp_coast04","name":"Stillwater Pirates","description":"Rumor has it the Stillwater Pirates have expanded their smuggling operation to the Shoach Coast. Snuff them out and take their treasure for yourself.","level":9,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastSmugglers","spawnPoint2":"coastSmugglers","spawnPoint3":"coastSmugglers","bgFilepath":"coast04.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastSmugglers","spawnPoint2TableName":"coastSmugglers","spawnPoint3TableName":"coastSmugglers"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast05":{"campId":"camp_coast05","name":"Tidewater Skeletons","description":"Restless undead patrol the coastline and pull adventurers into the undertow.","level":11,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastSkeletons","spawnPoint2":"coastSkeletons","spawnPoint3":"coastSkeletons","bgFilepath":"coast01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastSkeletons","spawnPoint2TableName":"coastSkeletons","spawnPoint3TableName":"coastSkeletons"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast06":{"campId":"camp_coast06","name":"Tadlocs of Blacksand Caverns","description":"Elite Tadloc warriors are occuping the Blacksand Caverns. Explore the caverns, root out the Tadlocs, and return with any treasures you find.","level":13,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastCaveTadlocs","spawnPoint2":"coastCaveTadlocs","spawnPoint3":"coastCaveTadlocs","bgFilepath":"coast06.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastCaveTadlocs","spawnPoint2TableName":"coastCaveTadlocs","spawnPoint3TableName":"coastCaveTadlocs"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast07":{"campId":"camp_coast07","name":"Captain Smellybeard's Booty","description":"Legend has it that Captain Smellybeard met his demise off the Shoach Coast. Defeat his ghost so that his spirit can enter the Otherrealm, and return with anything you find in the ship's cargo hold.","level":16,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"coastPirates","spawnPoint2":"coastPirates","spawnPoint3":"coastPirates","bgFilepath":"coast01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastPirates","spawnPoint2TableName":"coastPirates","spawnPoint3TableName":"coastPirates"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_coast08":{"campId":"camp_coast08","name":"Spectre Rock","description":"Ghostly sirens lure adventurers to their deaths on this mysterious rock. Can you resist their tempting call?","level":35,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":5,"groupSize":4,"spawnPoint1":"coastSirens","spawnPoint2":"coastSirens","spawnPoint3":"coastSirens","bgFilepath":"coast08.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"coastSirens","spawnPoint2TableName":"coastSirens","spawnPoint3TableName":"coastSirens"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}},"camp_falls01":{"campId":"camp_falls01","name":"The Phantoms of Feshah Falls","description":"Feshah Falls is haunted by the spirits of those who drowned in Feshah River. Go to the falls and free 8 spirits.","level":2,"durationShort":3600,"durationMedium":10800,"durationLong":25200,"respawnRate":4,"groupSize":4,"spawnPoint1":"ratsEasy","spawnPoint2":"ratsEasy","spawnPoint3":"ratsEasy","bgFilepath":"coast01.png","heroes":[],"spawnPointData":{"spawnPoint1TableName":"ratsEasy","spawnPoint2TableName":"ratsEasy","spawnPoint3TableName":"ratsEasy"},"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"campHeroesSelected":0,"selectedDuration":0,"enableButton":"","campOutcome":{}}}
var harvesting={"harvesting_forest_tannin":{"harvestingId":"harvesting_forest_tannin","name":"Tree Tannin","minSkill":0,"repeatable":true,"timeToHarvest":60,"prizeItem1":"Tree Tannin","minQuantity":1,"maxQuantity":3,"icon":"harvest_treeTannin.png","hero":null,"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"lootWon":{"prizeItem1":null,"prizeQuantity":0}},"harvesting_forest_roughStone":{"harvestingId":"harvesting_forest_roughStone","name":"Rough Stone","minSkill":0,"repeatable":true,"timeToHarvest":60,"prizeItem1":"Rough Stone","minQuantity":1,"maxQuantity":3,"icon":"harvest_roughStone.png","hero":null,"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"lootWon":{"prizeItem1":null,"prizeQuantity":0}},"harvesting_forest_copperOre":{"harvestingId":"harvesting_forest_copperOre","name":"Copper Ore","minSkill":0,"repeatable":true,"timeToHarvest":60,"prizeItem1":"Copper Ore","minQuantity":1,"maxQuantity":3,"icon":"harvest_copperOre.png","hero":null,"endTime":-1,"inProgress":false,"readyToCollect":false,"timesRun":0,"lootWon":{"prizeItem1":null,"prizeQuantity":0}}}
var tradeskills={"alchemy":{"tradeskill":"alchemy","displayName":"Alchemy","description":"Potions and stuff","hero":null,"timer":null,"inProgress":false,"readyToCollect":false,"wildcardItemOnDeck":null,"recipes":[],"selectedRecipe":null,"currentlyCrafting":{"moddingAnItem":false,"wildcardItem":null,"name":"","statImproved":"","statIncrease":"","totalTimeToFinish":""}},"blacksmithing":{"tradeskill":"blacksmithing","displayName":"Blacksmithing","description":"Combine fire and metal to craft weapons and armor from ore, metals, and other materials.","hero":null,"timer":null,"inProgress":false,"readyToCollect":false,"wildcardItemOnDeck":null,"recipes":[],"selectedRecipe":null,"currentlyCrafting":{"moddingAnItem":false,"wildcardItem":null,"name":"","statImproved":"","statIncrease":"","totalTimeToFinish":""}},"fletching":{"tradeskill":"fletching","displayName":"Fletching","description":"Make arrows and bows","hero":null,"timer":null,"inProgress":false,"readyToCollect":false,"wildcardItemOnDeck":null,"recipes":[],"selectedRecipe":null,"currentlyCrafting":{"moddingAnItem":false,"wildcardItem":null,"name":"","statImproved":"","statIncrease":"","totalTimeToFinish":""}},"jewelcraft":{"tradeskill":"jewelcraft","displayName":"Jewelcraft","description":"Bend metal and gemstones into sparkly jewelry with powerful stat bonuses.","hero":null,"timer":null,"inProgress":false,"readyToCollect":false,"wildcardItemOnDeck":null,"recipes":[],"selectedRecipe":null,"currentlyCrafting":{"moddingAnItem":false,"wildcardItem":null,"name":"","statImproved":"","statIncrease":"","totalTimeToFinish":""}},"tailoring":{"tradeskill":"tailoring","displayName":"Tailoring","description":"Turn cloth and leather into useful items, such as robes, vests, and padding for plate armor made by blacksmiths.","hero":null,"timer":null,"inProgress":false,"readyToCollect":false,"wildcardItemOnDeck":null,"recipes":[],"selectedRecipe":null,"currentlyCrafting":{"moddingAnItem":false,"wildcardItem":null,"name":"","statImproved":"","statIncrease":"","totalTimeToFinish":""}}}
