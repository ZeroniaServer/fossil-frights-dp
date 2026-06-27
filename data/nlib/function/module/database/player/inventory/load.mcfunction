##		USAGE DOCUMENTATION
##------------------------------
#	
#	1. Set the value of [.inventory dummy] (Optional)
#	2. Call this function
#	
##------------------------------

# load player data
function nlib:module/database/player/load

# copy db.inventoy[] to dummy
data modify storage nlib:dummy dummy set value {id: 1}
execute if score .inventory dummy matches 1.. store result storage nlib:dummy dummy.id int 1 run scoreboard players get .inventory dummy
execute if score .inventory dummy matches 1.. run scoreboard players reset .inventory dummy
function nlib:module/database/player/inventory/method/macro/load with storage nlib:dummy dummy

# set player inventory
execute in minecraft:overworld positioned 0 -64 0 run function nlib:module/database/player/inventory/method/load_inventory
