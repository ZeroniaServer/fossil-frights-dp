scoreboard players set #curse_timer ff_hazard_rng 0
scoreboard players set #curse_restore_timer ff_hazard_rng 0
scoreboard players set #curse_second_timer ff_hazard_rng 0
scoreboard players set #curse_state ff_hazard_rng 0
scoreboard players set #curse_blinks ff_hazard_rng 0
scoreboard players set #curse_effect_timer ff_hazard_rng 0
scoreboard players set #curse_indicator ff_hazard_rng 0
scoreboard players set #curse_indicator_timer ff_hazard_rng 0
effect clear @a[tag=ff_active] minecraft:levitation
tag @a[tag=ff_active] remove ff_curse_room_now
tag @a remove ff_curse_room_seen
function fossil_frights:hazard/curse/clear_selected
function fossil_frights:hazard/curse/restore_all
function fossil_frights:hazard/curse/summon_toggle
function fossil_frights:hazard/curse/set_indicator_safe
execute as @a at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 0.8 1.0
