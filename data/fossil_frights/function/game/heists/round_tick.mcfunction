execute unless entity @a[tag=ff_heist_guard] run return run function fossil_frights:game/heists/thieves_win
execute unless entity @a[tag=ff_heist_thief] run return run function fossil_frights:game/heists/guards_win
execute if score $heist_loot ff_heist matches 1000.. run return run function fossil_frights:game/heists/thieves_win
execute if score $timer_frozen ff_day matches 1 run return 0
scoreboard players add $heist_flash ff_heist 1
execute if score $heist_flash ff_heist matches 20.. run scoreboard players set $heist_flash ff_heist 0
function fossil_frights:game/heists/loot/update_held
function fossil_frights:game/heists/loot/render
scoreboard players remove $heist_timer ff_heist 1
scoreboard players operation $heist_elapsed ff_heist = #heist_full ff_heist
scoreboard players operation $heist_elapsed ff_heist -= $heist_timer ff_heist
execute store result bossbar fossil_frights:bossbar value run scoreboard players get $heist_elapsed ff_heist
execute if score $heist_timer ff_heist matches ..0 run return run function fossil_frights:game/heists/guards_win
function fossil_frights:game/heists/update_timer_display
function fossil_frights:game/heists/loot/header
