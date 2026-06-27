## uninstall library contents

# remove forceload
execute in minecraft:overworld run forceload remove 0 0

# remove storage data
data remove storage nlib:data cache
data remove storage nlib:data version
data remove storage nlib:dummy array
data remove storage nlib:dummy dummy
data remove storage nlib:dummy macro
data remove storage nlib:dummy db

# remove scoreboards
scoreboard objectives remove dummy
scoreboard objectives remove nlib.setting
scoreboard objectives remove nlib.actionbar.spectate
scoreboard objectives remove spectate_menu
scoreboard objectives remove version
scoreboard objectives remove nlib.cooldown.spectator_input
