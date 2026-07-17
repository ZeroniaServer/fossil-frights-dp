scoreboard players set $custom_day_active ff_day 1
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 1
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
execute as @a[team=ff_guard] run function fossil_frights:key/refresh
clear @a[team=ff_guard] minecraft:written_book
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/vanilla/written_book]
function fossil_frights:tasks/bookcase/clear
function fossil_frights:tasks/reset
function fossil_frights:tasks/tracker/show
function fossil_frights:tasks/tracker/refresh
function fossil_frights:game/start_room/timer_bars/close
execute as @a[team=ff_guard] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
function fossil_frights:game/bossbar/set_day
function fossil_frights:game/time/start_night
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
