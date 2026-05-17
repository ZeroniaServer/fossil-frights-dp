execute if score $game_running ff_game_state matches 1 unless score $run_admin_modified ff_game_state matches 1 run tellraw @a [{"text":"ℹ ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" modified the run.","color":"yellow"}]
execute if score $game_running ff_game_state matches 1 run scoreboard players set $run_admin_modified ff_game_state 1
