## called when: player exits spectator mode
## called by: function nlib:module/player/spectate/toggle

# return if disabled
execute if score $nlib.spectate.inventory nlib.setting matches 0 unless entity @s[tag=nlib.spectating.inventory] run return fail
execute if score $nlib.spectate.inventory nlib.setting matches 1 unless entity @s[tag=nlib.spectating.inventory] run return fail
tag @s remove nlib.spectating.inventory

# load inventory
clear @s
scoreboard players set .inventory dummy -1025530
function nlib:module/database/player/inventory/load
