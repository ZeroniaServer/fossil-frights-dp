scoreboard players operation $day_result ff_day = $day_current ff_day
scoreboard players set $day_active ff_day 0
scoreboard players set $day_timer ff_day 6000
tellraw @a [{"selector":"@a[tag=ff_active,limit=1]","color":"gold"},{"text":" survived to day ","color":"gold"},{"score":{"name":"$day_result","objective":"ff_day"},"color":"white"}]
function fossil_frights:game/end
scoreboard players set $day_result ff_day 0
