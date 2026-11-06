# Choose text for each player
scoreboard players reset @a ff_below_name_text.unresolved

#(ant fight)
execute as @a[gamemode=!spectator,predicate=fossil_frights:player/is_playing_ant_fight] run attribute @s minecraft:below_name_distance base set 8
execute as @a[gamemode=!spectator,predicate=fossil_frights:player/is_playing_ant_fight] run scoreboard players display numberformat @s ff_below_name_text.unresolved fixed ["",{color:"green",translate:"ff.lobby.ant_fight.below_name",font:"fossil_frights:small_caps",with:[{color:"white",score:{name:"@s",objective:"ff_ant_score"}}]}]

#(heist keys)
#execute if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/heist_mode_active as @a[gamemode=!spectator,predicate=fossil_frights:player/team/guard] run attribute @s minecraft:below_name_distance base set 64
#execute if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/heist_mode_active as @a[gamemode=!spectator,predicate=fossil_frights:player/team/guard] run scoreboard players display numberformat @s ff_below_name_text.unresolved fixed "key shenanigans go here"

# Display manager
execute as @a unless score @s ff_below_name_text.unresolved matches 0 run attribute @s minecraft:below_name_distance base set 0
execute as @a unless score @s ff_below_name_text.unresolved matches 0 run scoreboard players reset @s ff_below_name_text
execute as @a[limit=1,scores={ff_below_name_text.unresolved=0}] run scoreboard players display numberformat @s ff_below_name_text fixed ["",{score:{name:"@s",objective:"ff_below_name_text.unresolved"}},"\u17b6"]
execute if entity @a[limit=1,scores={ff_below_name_text=0}] run scoreboard objectives setdisplay below_name ff_below_name_text
execute unless entity @a[limit=1,scores={ff_below_name_text=0}] run scoreboard objectives setdisplay below_name

schedule function fossil_frights:player/name_tag/tick 1t
