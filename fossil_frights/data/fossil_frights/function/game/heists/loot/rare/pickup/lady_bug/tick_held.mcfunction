scoreboard players remove @s ff_bat_bug_timer 1
scoreboard players operation @s ff_bat_bug_bar = $bat_bug_timer_heist_cfg ff_bat_bug_timer
scoreboard players operation @s ff_bat_bug_bar -= @s ff_bat_bug_timer
scoreboard players operation @s ff_bat_bug_bar *= #34 ff_constant
scoreboard players operation @s ff_bat_bug_bar /= $bat_bug_timer_heist_cfg ff_bat_bug_timer
function fossil_frights:tasks/hard/feed_the_bats/show_timer_bar
execute if score @s ff_bat_bug_timer matches 0 run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/expire
