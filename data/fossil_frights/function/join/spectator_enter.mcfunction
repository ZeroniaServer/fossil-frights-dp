execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 unless block 10 71 26 minecraft:lever[powered=true] run function fossil_frights:messages/error/spectating_disabled
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 unless block 10 71 26 minecraft:lever[powered=true] run return 0
execute unless entity @a[tag=ff_active,limit=1] run return 0
gamemode spectator @s
tp @s @a[tag=ff_active,limit=1]
spectate @a[tag=ff_active,limit=1] @s
function fossil_frights:messages/spectator/now_spectating
