scoreboard players reset @s ff_key_cooldown
tag @s add ff_heist_key_return_thief
tag @s remove ff_heist_key_used_returned
tag @s remove ff_heist_key_consume_mainhand
tag @s remove ff_heist_key_consume_offhand
execute as @a[predicate=fossil_frights:player/team/guard,scores={ff_heist_guard_has_key=0}] run function fossil_frights:game/heists/key/check_held with storage fossil_frights:heist_key
tag @s remove ff_heist_key_return_thief

execute unless entity @s[tag=ff_heist_key_used_returned] if items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] run tag @s add ff_heist_key_consume_mainhand
execute unless entity @s[tag=ff_heist_key_used_returned] unless entity @s[tag=ff_heist_key_consume_mainhand] if items entity @s weapon.offhand *[custom_data~{itemID:"key"}] run tag @s add ff_heist_key_consume_offhand
execute if entity @s[tag=ff_heist_key_consume_mainhand] run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if entity @s[tag=ff_heist_key_consume_offhand] run item modify entity @s weapon.offhand fossil_frights:deduct_1
execute unless entity @s[tag=ff_heist_key_used_returned] unless entity @s[tag=ff_heist_key_consume_mainhand] unless entity @s[tag=ff_heist_key_consume_offhand] run clear @s *[custom_data~{itemID:"key"}] 1

tag @s remove ff_heist_key_used_returned
tag @s remove ff_heist_key_consume_mainhand
tag @s remove ff_heist_key_consume_offhand
