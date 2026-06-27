## called when: player enters spectator mode
## called by: function nlib:module/player/spectate/toggle

# return if disabled
execute if score $nlib.spectate.inventory nlib.setting matches 0 run return fail
tag @s add nlib.spectating.inventory

# save inventory
scoreboard players set .inventory dummy -1025530
function nlib:module/database/player/inventory/save
clear @s
