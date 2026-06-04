execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @a[tag=ff_heist_thief] run function fossil_frights:messages/error/heists_need_players
execute unless entity @a[tag=ff_heist_thief] run return 0
execute unless entity @a[tag=ff_heist_guard] run function fossil_frights:messages/error/heists_need_players
execute unless entity @a[tag=ff_heist_guard] run return 0
scoreboard players set $heist_round_active ff_game_state 1
scoreboard players set $heist_timer ff_heist 12000
scoreboard players set $heist_loot ff_heist 0
scoreboard players set $heist_elapsed ff_heist 0
scoreboard objectives modify ff_heist_sidebar displayname [{"text":"$ ","color":"gold"},{"score":{"name":"$heist_loot","objective":"ff_heist"},"color":"white"},{"text":"/1000","color":"gold"}]
scoreboard objectives setdisplay sidebar ff_heist_sidebar
scoreboard players set $loot ff_heist_sidebar 0
scoreboard players display name $loot ff_heist_sidebar [{"text":"Loot stolen","color":"gold","italic":false}]
function fossil_frights:game/heists/generate_loot
function fossil_frights:game/heists/release_thieves
function fossil_frights:game/heists/waiting_text/hide
function fossil_frights:animations/door/close
function fossil_frights:join/clear
function fossil_frights:join/setup
bossbar remove fossil_frights:bossbar
bossbar add fossil_frights:bossbar [{"text":"Fossil Heists: 10:00","color":"gold"}]
bossbar set fossil_frights:bossbar players @a
bossbar set fossil_frights:bossbar visible true
bossbar set fossil_frights:bossbar color white
bossbar set fossil_frights:bossbar style progress
bossbar set fossil_frights:bossbar max 12000
bossbar set fossil_frights:bossbar value 0
gamerule doDaylightCycle true
time set 13000
scoreboard players set $time_anim_active ff_day 0
function fossil_frights:game/heists/update_timer_display
function fossil_frights:messages/heists/started
