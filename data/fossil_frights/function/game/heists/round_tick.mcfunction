execute unless entity @a[tag=ff_heist_guard] run return run function fossil_frights:game/heists/thieves_win
execute unless entity @a[tag=ff_heist_thief] run return run function fossil_frights:game/heists/guards_win
execute if score $heist_loot ff_heist matches 1000.. run return run function fossil_frights:game/heists/thieves_win
scoreboard players remove $heist_timer ff_heist 1
scoreboard players operation $heist_elapsed ff_heist = #heist_full ff_heist
scoreboard players operation $heist_elapsed ff_heist -= $heist_timer ff_heist
execute store result bossbar fossil_frights:bossbar value run scoreboard players get $heist_elapsed ff_heist
execute if score $heist_timer ff_heist matches ..0 run return run function fossil_frights:game/heists/guards_win
function fossil_frights:game/heists/update_timer_display
scoreboard players operation $loot ff_heist_sidebar = $heist_loot ff_heist
scoreboard objectives modify ff_heist_sidebar displayname [{"text":"$ ","color":"gold"},{"score":{"name":"$heist_loot","objective":"ff_heist"},"color":"white"},{"text":"/1000","color":"gold"}]
