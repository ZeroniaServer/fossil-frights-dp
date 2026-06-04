execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $day_current ff_day matches 1.. run tellraw @a [{"text":"⭐ ","color":"gold"},{"selector":"@a[tag=ff_active]","separator":" and ","color":"gold"},{"text":" made it to day ","color":"gold"},{"score":{"name":"$day_current","objective":"ff_day"},"color":"gold"},{"text":".","color":"gold"}]
