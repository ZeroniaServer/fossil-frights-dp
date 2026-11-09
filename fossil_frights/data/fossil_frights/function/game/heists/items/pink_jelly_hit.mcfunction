advancement revoke @s only fossil_frights:items/heists/pink_jelly_hit
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute if entity @s[gamemode=spectator] run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] unless entity @s[predicate=fossil_frights:player/team/thief] run return 0
execute if entity @s[predicate=fossil_frights:player/team/guard] unless function fossil_frights:game/heists/items/check_attacker_thief run return 0
execute if entity @s[predicate=fossil_frights:player/team/thief] unless function fossil_frights:game/heists/items/check_attacker_guard run return 0
execute on attacker run tag @s remove ff_heist_pink_jelly_mainhand
execute on attacker run tag @s remove ff_heist_pink_jelly_offhand
execute on attacker if items entity @s weapon.mainhand *[custom_data~{itemID:"pink_jelly"}] run tag @s add ff_heist_pink_jelly_mainhand
execute on attacker unless entity @s[tag=ff_heist_pink_jelly_mainhand] if items entity @s weapon.offhand *[custom_data~{itemID:"pink_jelly"}] run tag @s add ff_heist_pink_jelly_offhand
execute on attacker unless entity @s[tag=ff_heist_pink_jelly_mainhand] unless entity @s[tag=ff_heist_pink_jelly_offhand] run return 0
function fossil_frights:game/heists/paint_fx/add
playsound minecraft:entity.squid.squirt player @a[distance=..15] ~ ~ ~ 1 1
execute on attacker if entity @s[tag=ff_heist_pink_jelly_mainhand] run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute on attacker if entity @s[tag=ff_heist_pink_jelly_offhand] run item modify entity @s weapon.offhand fossil_frights:deduct_1
execute on attacker run tag @s remove ff_heist_pink_jelly_mainhand
execute on attacker run tag @s remove ff_heist_pink_jelly_offhand
function fossil_frights:util/player/extinguish
