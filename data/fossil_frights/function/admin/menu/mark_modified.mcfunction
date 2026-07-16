execute if score $game_running ff_game_state matches 1 unless score $run_admin_modified ff_game_state matches 1 run tellraw @a [{"translate":"ff.messages.info","color":"yellow","with":[{"translate":"ff.messages.info.modified_the_run","with":[{"selector":"@s","color":"yellow"}]}]}]
execute if score $game_running ff_game_state matches 1 run scoreboard players set $run_admin_modified ff_game_state 1
