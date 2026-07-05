execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $make_some_noise_sel ff_task_state matches 1 run return 0
execute unless score $make_some_noise_done ff_task_state matches 0 run return 0
execute positioned 61 72 71 if entity @a[team=ff_guard,gamemode=!spectator,distance=..10,limit=1] run function fossil_frights:tasks/easy/make_some_noise/complete
