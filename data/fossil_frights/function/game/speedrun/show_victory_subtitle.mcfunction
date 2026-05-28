execute if score $run_multiplayer ff_game_state matches 1 run title @s subtitle ""
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run title @s subtitle ""
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless block 10 71 23 minecraft:lever[powered=true] run title @s subtitle ""
execute unless block 10 71 23 minecraft:lever[powered=true] run return 0
function fossil_frights:game/speedrun/show_subtitle

