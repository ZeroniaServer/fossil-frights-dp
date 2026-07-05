execute if score $run_multiplayer ff_game_state matches 1 run setblock 9 71 23 minecraft:gray_concrete
execute if score $run_multiplayer ff_game_state matches 1 unless block 10 71 23 minecraft:lever[face=wall,facing=east,powered=false] run setblock 10 71 23 minecraft:lever[face=wall,facing=east,powered=false]
execute unless score $run_multiplayer ff_game_state matches 1 unless block 10 71 23 minecraft:lever run setblock 10 71 23 minecraft:lever[face=wall,facing=east,powered=false]
execute unless score $run_multiplayer ff_game_state matches 1 if block 10 71 23 minecraft:lever[powered=true] run setblock 9 71 23 minecraft:lime_concrete
execute unless score $run_multiplayer ff_game_state matches 1 unless block 10 71 23 minecraft:lever[powered=true] run setblock 9 71 23 minecraft:gray_concrete
execute unless score $run_multiplayer ff_game_state matches 1 if block 10 71 23 minecraft:lever[powered=true] run tag @a[team=ff_guard] add ff_settings_speedrun_show
execute unless score $run_multiplayer ff_game_state matches 1 unless block 10 71 23 minecraft:lever[powered=true] run tag @a[team=ff_guard] remove ff_settings_speedrun_show
