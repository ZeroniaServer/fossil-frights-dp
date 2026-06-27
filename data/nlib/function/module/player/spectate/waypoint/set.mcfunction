## called when: player exits spectator mode
## called by: function nlib:module/player/spectate/toggle

# return if disabled
execute if score $nlib.spectate.waypoint nlib.setting matches 0 run return fail
tag @s add nlib.spectating.waypoint

# save original waypoint
function nlib:module/database/player/load
data modify storage nlib:dummy db.nlib.locator_bar_icon set from entity @s locator_bar_icon
execute unless data entity @s locator_bar_icon run data modify storage nlib:dummy db.nlib.locator_bar_icon set value {}
function nlib:module/database/player/save

# set waypoint
waypoint modify @s style set nlib:ghost
