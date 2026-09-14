execute if entity @s[tag=ff_ant_fight_exit_pending] run return 0
execute if entity @s[tag=ff_ant_fight] unless entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] run function fossil_frights:lobby_games/ant_fight/hit
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_leaf_use > @s ff_ant_leaf_seen run function fossil_frights:lobby_games/ant_fight/mark_projectile
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/check_hits
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/music/tick
execute if entity @s[tag=ff_ant_fight,tag=ff_dropped_infinileaf] run tag @s add ff_ant_fight_leave
execute if entity @s[tag=ff_ant_fight,tag=ff_dropped_infinileaf] run function fossil_frights:lobby_games/ant_fight/end
execute if entity @s[tag=ff_ant_fight] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=ff_ant_fight] unless predicate fossil_frights:player/inventory/infinileaf run loot give @s loot fossil_frights:items/other/infinileaf
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_score 0
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_top_score 0
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_immunity 0
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_combo 0
execute if entity @s[tag=ff_ant_fight,scores={ff_ant_immunity=1..}] run scoreboard players remove @s ff_ant_immunity 1
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_score > @s ff_ant_top_score run scoreboard players operation @s ff_ant_top_score = @s ff_ant_score
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_score matches 10.. run advancement grant @s only fossil_frights:03_lobby/warrior_ant
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/check_best
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/lobby_sneak_tick
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_combo_shown_until_timestamp > #gametime ff_ant_combo_shown_until_timestamp run title @s actionbar ["",{translate:"ff.lobby.ant_fight.ant_score",color:"#71de75",font:"fossil-frights:small_caps",with:[{translate: "%s %s",with:[{score:{name:"@s",objective:"ff_ant_score"},color:"white"},{text:"",color:"green",extra:["(+",{score:{name:"@s",objective:"ff_ant_combo"}},")"]}]}]}]
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_combo_shown_until_timestamp <= #gametime ff_ant_combo_shown_until_timestamp run scoreboard players reset @s ff_ant_combo
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_combo_shown_until_timestamp <= #gametime ff_ant_combo_shown_until_timestamp run scoreboard players reset @s ff_ant_combo_shown_until_timestamp
execute if entity @s[tag=ff_ant_fight] unless score @s ff_ant_combo_shown_until_timestamp > #gametime ff_ant_combo_shown_until_timestamp run title @s actionbar ["",{translate:"ff.lobby.ant_fight.ant_score",color:"#71de75",font:"fossil-frights:small_caps",with:[{score:{name:"@s",objective:"ff_ant_score"},color:"white"}]}]
execute if entity @s[tag=ff_ant_fight] run scoreboard players display numberformat @s ff_ant_score_below_name fixed [" ",{color:"green",translate:"ff.lobby.ant_fight.below_name",font:"fossil-frights:small_caps",with:[{color:"white",score:{name:"@s",objective:"ff_ant_score"}}]}]
execute if entity @s[tag=ff_ant_fight] run return 0
execute unless entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] if entity @s[tag=ff_ant_lobby_blind] run function fossil_frights:lobby_games/ant_fight/lobby_sneak/reset
execute if entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] positioned -36.5 76 104.5 if entity @s[distance=..24] run function fossil_frights:lobby_games/ant_fight/lobby_sneak_tick
execute if entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] positioned -36.5 76 104.5 unless entity @s[distance=..24] run function fossil_frights:lobby_games/ant_fight/lobby_sneak/reset
execute if entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] positioned -20.5 76.5 100.5 if entity @s[distance=..1.2] run function fossil_frights:lobby_games/ant_fight/start
execute if entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] positioned -52.5 77.5 95.5 if entity @s[distance=..1.2] run function fossil_frights:lobby_games/ant_fight/start
execute if entity @s[gamemode=adventure,predicate=fossil_frights:player/is_lobby_freeplay] positioned -40 74 114 if entity @s[distance=..1.2] run function fossil_frights:lobby_games/ant_fight/start
