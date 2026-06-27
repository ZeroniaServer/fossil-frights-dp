## called when: player enters spectator mode
## called by: function nlib:module/player/spectate/toggle

# return if disabled
execute if score $nlib.spectate.waypoint nlib.setting matches 0 unless entity @s[tag=nlib.spectating.waypoint] run return fail
execute if score $nlib.spectate.waypoint nlib.setting matches 1 unless entity @s[tag=nlib.spectating.waypoint] run return fail
tag @s remove nlib.spectating.waypoint

# load original waypoint
waypoint modify @s style reset
function nlib:module/database/player/load
function nlib:util/command/waypoint/style with storage nlib:dummy db.nlib.locator_bar_icon
