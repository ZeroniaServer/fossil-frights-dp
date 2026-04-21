scoreboard players remove @s ff_bat_bug_timer 1
scoreboard players operation @s ff_bat_bug_bar = $bat_bug_timer_cfg ff_bat_bug_timer
scoreboard players operation @s ff_bat_bug_bar -= @s ff_bat_bug_timer
scoreboard players operation @s ff_bat_bug_bar *= #twenty ff_key_cd_cfg
scoreboard players operation @s ff_bat_bug_bar /= $bat_bug_timer_cfg ff_bat_bug_timer
function fossil_frights:tasks/hard/feed_the_bats/show_timer_bar
execute if score @s ff_bat_bug_timer matches 0 run function fossil_frights:tasks/hard/feed_the_bats/escaped
