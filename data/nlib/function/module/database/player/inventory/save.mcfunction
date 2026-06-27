##		USAGE DOCUMENTATION
##------------------------------
#	
#	1. Set the value of [.inventory dummy] (Optional)
#	2. Call this function
#	
##------------------------------

# load player data
function nlib:module/database/player/load

# initialize dummy storage
data modify storage nlib:dummy dummy set value {i:[], id: 1, slot:{hotbar:[], inventory:[], equipment:[], special:[] }}
execute if score .inventory dummy matches 1.. store result storage nlib:dummy dummy.id int 1 run scoreboard players get .inventory dummy
execute if score .inventory dummy matches 1.. run scoreboard players reset .inventory dummy

# save inventory to db.inventoy[]
function nlib:module/database/player/inventory/method/save_inventory
function nlib:module/database/player/inventory/method/macro/save with storage nlib:dummy dummy

# save player data
function nlib:module/database/player/save
