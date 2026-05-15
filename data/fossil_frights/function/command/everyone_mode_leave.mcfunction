function fossil_frights:messages/leave/player_left
function fossil_frights:game/roster/remove_current
tag @s remove ff_active
team leave @s
tag @s remove ff_forced_spectate
tag @s remove ff_muted_chat
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_bat_bug_timer 0
scoreboard players set @s ff_bat_bug_bar 0
title @s actionbar ""
clear @s
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key:1b}]
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key_cooldown:1b}]
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key_disabled:1b}]
clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={ff_dna:1b}]
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:player/effects/lobby_reset
effect give @s minecraft:instant_health 100 0 true
function fossil_frights:util/fade/queue/spectator_exit
