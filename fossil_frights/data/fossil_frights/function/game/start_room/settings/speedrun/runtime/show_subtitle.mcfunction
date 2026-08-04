title @s title ""
execute if score @s ff_speedrun_sign matches 1 run function fossil_frights:game/start_room/settings/speedrun/runtime/show_subtitle_red
execute unless score @s ff_speedrun_sign matches 1 run function fossil_frights:game/start_room/settings/speedrun/runtime/show_subtitle_green
