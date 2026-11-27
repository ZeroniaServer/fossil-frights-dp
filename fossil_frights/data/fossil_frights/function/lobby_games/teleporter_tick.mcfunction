execute as @a[predicate=!fossil_frights:location/lobby_games/teleporters/any] run scoreboard players set @s ff_tp_time 0

execute if score #ff_ant_fight ff_tp_anim matches 1 run data merge entity @e[type=item_display,tag=ff_ant_fight_tp,limit=1] {view_range:1f}
execute if score #ff_ant_fight ff_tp_anim matches 1..10 run scoreboard players add #ff_ant_fight ff_tp_anim 1
execute if score #ff_ant_fight ff_tp_anim matches 10.. run data merge entity @e[type=item_display,tag=ff_ant_fight_tp,limit=1] {view_range:0f}
execute if score #ff_ant_fight ff_tp_anim matches 10.. run scoreboard players set #ff_ant_fight ff_tp_anim 0

execute if score #ff_parkour ff_tp_anim matches 1 run data merge entity @e[type=item_display,tag=ff_parkour_tp,limit=1] {view_range:1f}
execute if score #ff_parkour ff_tp_anim matches 1..10 run scoreboard players add #ff_parkour ff_tp_anim 1
execute if score #ff_parkour ff_tp_anim matches 10.. run data merge entity @e[type=item_display,tag=ff_parkour_tp,limit=1] {view_range:0f}
execute if score #ff_parkour ff_tp_anim matches 10.. run scoreboard players set #ff_parkour ff_tp_anim 0

execute if score #ff_sulfur_strikers ff_tp_anim matches 1 run data merge entity @e[type=item_display,tag=ff_sulfur_strikers_tp,limit=1] {view_range:1f}
execute if score #ff_sulfur_strikers ff_tp_anim matches 1..10 run scoreboard players add #ff_sulfur_strikers ff_tp_anim 1
execute if score #ff_sulfur_strikers ff_tp_anim matches 10.. run data merge entity @e[type=item_display,tag=ff_sulfur_strikers_tp,limit=1] {view_range:1f}
execute if score #ff_sulfur_strikers ff_tp_anim matches 10.. run scoreboard players set #ff_sulfur_strikers ff_tp_anim 0

execute if score #ff_temple_run ff_tp_anim matches 1 run data merge entity @e[type=item_display,tag=ff_temple_run_tp,limit=1] {view_range:1f}
execute if score #ff_temple_run ff_tp_anim matches 1..10 run scoreboard players add #ff_temple_run ff_tp_anim 1
execute if score #ff_temple_run ff_tp_anim matches 10.. run data merge entity @e[type=item_display,tag=ff_temple_run_tp,limit=1] {view_range:0f}
execute if score #ff_temple_run ff_tp_anim matches 10.. run scoreboard players set #ff_temple_run ff_tp_anim 0