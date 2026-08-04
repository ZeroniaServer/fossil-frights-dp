data modify entity @e[type=minecraft:text_display,tag=ff_settings_primary_head,limit=1] text set value ""
data modify entity @e[type=minecraft:text_display,tag=ff_settings_add_player_icon,limit=1] text set value ""
data modify entity @e[type=minecraft:text_display,tag=ff_settings_add_player_icon,limit=1] transformation.scale set value [1f,1f,1f]
tp @e[type=minecraft:text_display,tag=ff_settings_add_player_icon,limit=1] 16.125625 72.25 25.84375
execute if score $settings_mode ff_game_state matches 0 if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_add_player_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data remove storage fossil_frights:settings primary
data remove storage fossil_frights:settings secondary
tag @a remove ff_settings_primary_player
execute as @a[team=ff_guard,sort=arbitrary,limit=1] run tag @s add ff_settings_primary_player
execute as @a[tag=ff_settings_primary_player,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:settings primary.name"}
execute if data storage fossil_frights:settings primary run function fossil_frights:game/start_room/settings/board/set_primary_head with storage fossil_frights:settings primary
execute if score $settings_mode ff_game_state matches 0 as @a[team=ff_guard,tag=!ff_settings_primary_player,sort=arbitrary,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:settings secondary.name"}
execute if data storage fossil_frights:settings secondary run function fossil_frights:game/start_room/settings/board/set_secondary_head with storage fossil_frights:settings secondary
execute unless score $settings_mode ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_primary_head,limit=1] text set value ""
tag @a remove ff_settings_primary_player
