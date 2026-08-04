scoreboard players set $settings_locked ff_game_state 1
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches 0 unless score $heist_round_active ff_game_state matches 1.. run scoreboard players set $settings_locked ff_game_state 0

execute if score $settings_locked ff_game_state matches 0 as @e[type=minecraft:text_display,tag=ff_settings_board_entity] run data modify entity @s brightness set value {sky:15,block:15}
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_board_entity] run data remove entity @s brightness

scoreboard players set $settings_mode ff_game_state 0
execute if score $party_mode_active ff_game_state matches 1 run scoreboard players set $settings_mode ff_game_state 1
execute if score $heist_mode_active ff_game_state matches 1 run scoreboard players set $settings_mode ff_game_state 2

scoreboard players set $settings_guard_count ff_game_state 0
scoreboard players set $settings_thief_count ff_game_state 0
execute as @a[team=ff_guard] run scoreboard players add $settings_guard_count ff_game_state 1
execute as @a[team=ff_thief] run scoreboard players add $settings_thief_count ff_game_state 1

# Modes
data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_frights_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_party_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_heists_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_frights_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_party_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_heists_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_frights_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_party_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_heists_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]

data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_label_frights,limit=1] text_opacity set value 0b
data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_label_party,limit=1] text_opacity set value 0b
data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_label_heists,limit=1] text_opacity set value 0b
execute if score $settings_mode ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_label_frights,limit=1] text_opacity set value -1b
execute if score $settings_mode ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_label_party,limit=1] text_opacity set value -1b
execute if score $settings_mode ff_game_state matches 2 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_mode_label_heists,limit=1] text_opacity set value -1b

data modify entity @e[type=minecraft:text_display,tag=ff_settings_players_label,limit=1] text set value ""
data modify entity @e[type=minecraft:text_display,tag=ff_settings_team_counts_label,limit=1] text set value ""
execute if score $settings_mode ff_game_state matches 0 if score $settings_guard_count ff_game_state matches ..1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_players_label,limit=1] text set value {translate:"ff.settings.board.players.solo",color:"white"}
execute if score $settings_mode ff_game_state matches 0 if score $settings_guard_count ff_game_state matches 2.. run data modify entity @e[type=minecraft:text_display,tag=ff_settings_players_label,limit=1] text set value {translate:"ff.settings.board.players.duos",color:"white"}
execute if score $settings_mode ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_team_counts_label,limit=1] text set value {translate:"ff.settings.board.players.party",color:"white",with:[{score:{name:"$settings_guard_count",objective:"ff_game_state"},color:"yellow"}]}
execute if score $settings_mode ff_game_state matches 2 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_team_counts_label,limit=1] text set value {translate:"ff.settings.board.players.heists",color:"white",with:[{score:{name:"$settings_guard_count",objective:"ff_game_state"},color:"gold"},{score:{name:"$settings_thief_count",objective:"ff_game_state"},color:"red"}]}

function fossil_frights:game/start_room/settings/board/refresh_heads
function fossil_frights:game/start_room/settings/board/refresh_settings
