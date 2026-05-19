extends Node2D

@export var balance = 0
@export var progress = {
	"game_1": {
		"unlocked": true
	},
	"game_2": {
		"unlocked": false
	},
	"game_3": {
		"unlocked": false
	}
}
@export var settings = {
	"toggleMusic": true
}

@export var inventory = {
	"double_jump": false,
	"sprint": false
}


var config = ConfigFile.new()

func saveUserData(saveSlot: int) -> void:
	print("Saving for slot " + str(saveSlot))
	
	config.set_value("slot" + str(saveSlot), "balance", balance)
	config.set_value("slot" + str(saveSlot), "progress", progress)
	config.set_value("slot" + str(saveSlot), "settings", settings)
	config.set_value("slot" + str(saveSlot), "inventory", inventory)
	
	config.save("user://saves.dat")
	
	print(balance)
	print(progress)
	print(settings)
	print(inventory)
	
func loadUserData(saveSlot: int) -> bool:
	print("Loading for slot " + str(saveSlot))
	var err = config.load("user://saves.dat")

	if err != OK:
		return false

	var section = "slot" + str(saveSlot)

	balance = config.get_value(section, "balance", 0)
	progress = config.get_value(section, "progress", {})
	settings = config.get_value(section, "settings", {})
	inventory = config.get_value(section, "inventory", {})

	print(balance)
	print(progress)
	print(settings)
	print(inventory)

	return true
