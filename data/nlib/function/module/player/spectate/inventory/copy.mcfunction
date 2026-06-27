## called as: nearest non-spectator to player with tag nlib.spectate
## called by: function nlib:module/player/spectate/spectate

# return if disabled
execute if score $nlib.spectate.inventory nlib.setting matches 0 run return fail
execute if score $nlib.spectate.inventory nlib.setting matches 1 if entity @p[tag=THIS_PLAYER_,tag=!nlib.spectating.inventory] run return fail

# copy inventory from target
data modify storage nlib:dummy dummy set value {i:[], id: -1, slot:{hotbar:[], inventory:[], equipment:[], special:[] }}
function nlib:module/database/player/inventory/method/save_inventory
data modify storage nlib:dummy dummy.slot.special set value []

# save inventory to self
execute as @p[tag=THIS_PLAYER_] in minecraft:overworld positioned 0 -64 0 run function nlib:module/database/player/inventory/method/load_inventory
