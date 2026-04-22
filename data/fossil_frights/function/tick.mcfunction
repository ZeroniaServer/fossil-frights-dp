scoreboard players remove @e[type=minecraft:interaction,tag=ff_lock_click,scores={ff_lock_click_ttl=1..}] ff_lock_click_ttl 1
kill @e[type=minecraft:interaction,tag=ff_lock_click,scores={ff_lock_click_ttl=..0}]
scoreboard players remove @e[type=minecraft:interaction,tag=ff_dna_click,scores={ff_lock_click_ttl=1..}] ff_lock_click_ttl 1
kill @e[type=minecraft:interaction,tag=ff_dna_click,scores={ff_lock_click_ttl=..0}]
execute as @e[type=minecraft:item_frame,tag=ff_dna_hover] run data merge entity @s {Glowing:0b}
team leave @e[type=minecraft:item_frame,tag=ff_dna_hover]
tag @e[type=minecraft:item_frame,tag=ff_dna_hover] remove ff_dna_hover
execute as @e[type=minecraft:item_frame,tag=ff_lock_glow] run data merge entity @s {Glowing:0b}
tag @e[type=minecraft:item_frame,tag=ff_lock_glow] remove ff_lock_glow
execute as @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=1..}] run data merge entity @s {Glowing:1b}
scoreboard players remove @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=1..}] ff_lock_flash 1
execute as @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=..0}] run data merge entity @s {Glowing:0b}
team leave @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=..0}]
tag @e[type=minecraft:item_frame,tag=ff_lock_flash,scores={ff_lock_flash=..0}] remove ff_lock_flash
execute as @e[type=minecraft:item_display,tag=ff_key_anim] at @s run function fossil_frights:key/anim_tick
execute as @e[type=minecraft:item_display,tag=front_door] at @s run function fossil_frights:animations/door/tick
execute if score $game_running ff_game_state matches 1 if score $forklift_watch ff_game_state matches 1 run function fossil_frights:animations/forklift/tick
execute if score $crane_rat_cooldown ff_game_state matches 1.. run scoreboard players remove $crane_rat_cooldown ff_game_state 1
execute if score $game_running ff_game_state matches 1 if score $crane_wait ff_game_state matches 0 as @e[tag=crane_operator] at @s run function fossil_frights:animations/crane/check_payment
execute if score $game_running ff_game_state matches 1 run function fossil_frights:animations/sarcophagus/tick
execute if score $game_running ff_game_state matches 1 run function fossil_frights:frights/puffer/tick
execute if score $game_running ff_game_state matches 1 run function fossil_frights:animations/velociraptor_skull/tick
execute if score $game_running ff_game_state matches 1 run function fossil_frights:animations/anvil/tick
execute as @a[tag=ff_active] run function fossil_frights:animations/well/tick
execute as @e[type=minecraft:armor_stand,tag=ff_credits_anchor] at @s run function fossil_frights:animations/credits/tick
function fossil_frights:tasks/final/plushies/prevent_drop
function fossil_frights:tasks/easy/tick
function fossil_frights:tasks/medium/tick
function fossil_frights:tasks/hard/tick
execute as @a[scores={ff_key_cooldown=1..}] run function fossil_frights:key/cooldown_tick
execute if score floods ff_hazard_active matches 1 run function fossil_frights:hazard/floods/tick
function fossil_frights:hazard/lights/tick
function fossil_frights:hazard/lava/tick
function fossil_frights:hazard/curse/tick
function fossil_frights:hazard/security/tick
function fossil_frights:game/tick
function fossil_frights:join/tick
function fossil_frights:util/fade/tick
execute as @a at @s run function fossil_frights:player_tick
