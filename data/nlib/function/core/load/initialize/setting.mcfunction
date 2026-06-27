## reset settings
execute if entity @s[type=minecraft:player] run function nlib:util/debug/message/settings_reset_by {text:"{storage:'nlib:data', nbt:'version.name', interpret:true}"}
execute if entity @s[type=minecraft:player] run scoreboard players reset * nlib.setting

## load default library settings
## unless [setting] is within [valid range], set to [default value]
execute unless score $nlib nlib.setting matches 0..1 run scoreboard players set $nlib nlib.setting 1

# toggle trigger commands
execute unless score $nlib.trigger.spectate_menu nlib.setting matches 0..1 run scoreboard players set $nlib.trigger.spectate_menu nlib.setting 0
execute unless score $nlib.trigger.version nlib.setting matches 0..1 run scoreboard players set $nlib.trigger.version nlib.setting 1

# player/spectate
execute unless score $nlib.spectate nlib.setting matches 0..2 run scoreboard players set $nlib.spectate nlib.setting 1
execute unless score $nlib.spectate.waypoint nlib.setting matches 0..1 run scoreboard players set $nlib.spectate.waypoint nlib.setting 0
execute unless score $nlib.spectate.inventory nlib.setting matches 0..1 run scoreboard players set $nlib.spectate.inventory nlib.setting 1
execute unless score $nlib.spectate.noclip nlib.setting matches 0..1 run scoreboard players set $nlib.spectate.noclip nlib.setting 0
execute unless score $nlib.cooldown.spectate_input nlib.setting matches 0.. run scoreboard players set $nlib.cooldown.spectate_input nlib.setting 10
