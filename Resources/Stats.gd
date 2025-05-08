extends Resource
class_name Stats

@export var Heath := 50.0
@export var Defence := 0.0
@export var Damage := 0.0
@export var Speed := 600.0
@export_category("Defence")
@export var True_defence := 0.0
@export var Summoning_defence := 5.0
@export var Melee_defence := 10.0
@export var Range_defence := 6.0
@export var Magic_defence := 8.0
@export_category("Damage")
@export var True_damage := 0.0
@export var Summoning_damage := 5.0
@export var Melee_damage := 10.0
@export var Range_damage := 6.0
@export var Magic_damage := 8.0
@export_category("Movement")
@export var Jump_power := -1600.0
@export var Number_of_jumps := 2
@export var Run := false
@export var Run_power := 1
@export var Flight := false
@export var Flight_power := 0
@export var Flight_time := 0
@export var Water_walker := false
@export var Lava_walker := false
@export var Magic_walker := false
