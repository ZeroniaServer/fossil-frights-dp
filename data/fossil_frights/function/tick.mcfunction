scoreboard players remove @e[type=minecraft:interaction,tag=ff_lock_click,scores={ff_lock_click_ttl=1..}] ff_lock_click_ttl 1
kill @e[type=minecraft:interaction,tag=ff_lock_click,scores={ff_lock_click_ttl=..0}]
execute as @e[type=minecraft:item_frame,tag=ff_lock_glow] run data merge entity @s {Glowing:0b}
tag @e[type=minecraft:item_frame,tag=ff_lock_glow] remove ff_lock_glow
execute as @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=1..}] run data merge entity @s {Glowing:1b}
scoreboard players remove @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=1..}] ff_lock_flash 1
execute as @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=..0}] run data merge entity @s {Glowing:0b}
team leave @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=..0}]
tag @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=..0}] remove ff_lock_flash
execute as @e[type=minecraft:item_display,tag=ff_key_anim] at @s run function fossil_frights:key/anim_tick
execute as @a[scores={ff_key_cooldown=1..}] run function fossil_frights:key/cooldown_tick
function fossil_frights:hazard/lava/tick
function fossil_frights:hazard/curse/tick
execute as @a at @s run function fossil_frights:player_tick
