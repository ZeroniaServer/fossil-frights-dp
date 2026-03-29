execute unless entity @a[tag=ff_active] run function fossil_frights:messages/error/no_active_player
execute unless entity @a[tag=ff_active] run return 0

function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:bossbar/setup
function fossil_frights:join/setup
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/reset
function fossil_frights:game/timer/reset
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:animations/door/close
function fossil_frights:animations/crane/reset
function fossil_frights:animations/forklift/up
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/puffer/summon
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
tp @a[tag=ff_active] 20 70 20 0 0
gamemode adventure @a[tag=ff_active]
clear @a[tag=ff_active]
effect clear @a[tag=ff_active] minecraft:absorption
effect clear @a[tag=ff_active] minecraft:health_boost
effect give @a[tag=ff_active] minecraft:instant_health 100 0 true
effect give @a[tag=ff_active] minecraft:saturation infinite 255 true
scoreboard players set @a[tag=ff_active] ff_key_cooldown 0
scoreboard players set @a[tag=ff_active] ff_key_bar 0
title @a[tag=ff_active] actionbar ""
item replace entity @a[tag=ff_active] armor.head with minecraft:carved_pumpkin[minecraft:item_name={text:'Security Hat',italic:false},minecraft:lore=[{text:'',extra:['security_guard_hat']}],minecraft:tooltip_display={hidden_components:['minecraft:lore']}] 1
execute as @a[tag=ff_active] run function fossil_frights:key/give
execute as @a[tag=ff_active] at @s run spawnpoint @s 20 70 20
scoreboard players set $sniffer_fright ff_game_state 0
scoreboard players set $bats_fright ff_game_state 0
scoreboard players set $puffer_fright ff_game_state 0
scoreboard players set $puffer_timer ff_game_state 0
scoreboard players set $creeper_fright ff_game_state 0
scoreboard players set $skeleton_fright ff_game_state 0
scoreboard players set @a ff_fright_timer 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $game_running ff_game_state 1
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 1
scoreboard players set $forklift_paid ff_game_state 0
function fossil_frights:game/start_room/day_button/refresh
