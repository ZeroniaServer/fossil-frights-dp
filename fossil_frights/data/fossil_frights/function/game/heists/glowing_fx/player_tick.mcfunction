execute unless predicate fossil_frights:entity/effects/glowing run tag @s add ff_glowing_overlay.falling

execute if entity @s[tag=ff_glowing_overlay.falling] run scoreboard players remove @s ff_glowing_fx_frame 1
execute unless entity @s[tag=ff_glowing_overlay.falling] run scoreboard players add @s ff_glowing_fx_frame 1

execute if predicate fossil_frights:entity/effects/glowing unless entity @s[tag=ff_glowing_overlay.falling] if score @s ff_glowing_fx_frame matches 40 run tag @s add ff_glowing_overlay.falling
execute if predicate fossil_frights:entity/effects/glowing if entity @s[tag=ff_glowing_overlay.falling] if score @s ff_glowing_fx_frame matches ..20 run tag @s remove ff_glowing_overlay.falling

execute unless score @s ff_glowing_fx_frame matches 0..40 run scoreboard players set @s ff_glowing_fx_frame 40
item modify entity @s armor.head fossil_frights:game/heists/invisimask/glowing_overlay/on

execute unless score @s ff_glowing_fx_frame matches 0 run return 0
execute if predicate fossil_frights:entity/effects/glowing run return 0
item modify entity @s armor.head fossil_frights:game/heists/invisimask/glowing_overlay/off
tag @s remove ff_glowing_overlay
tag @s remove ff_glowing_overlay.falling
scoreboard players reset @s ff_glowing_fx_frame
