extends Node

@onready var balanceLabel: Label = $sideOverlay/balanceOverlay/balanceContainer/balanceLabel
@onready var gemsLabel: Label = $sideOverlay/balanceOverlay/gems


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateUserBalanceDisplay()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	updateUserBalanceDisplay()
	pass

func updateUserBalanceDisplay() -> void:
	balanceLabel.text = str(Data.balance)
	gemsLabel.text = str(Data.gems)
