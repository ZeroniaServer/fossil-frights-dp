scoreboard players reset @s ff_key_cooldown
tag @s add ff_heist_key_return_thief
scoreboard players set #heist_key_used_returned ff_dummy 0
execute as @a[predicate=fossil_frights:player/team/guard,scores={ff_heist_guard_has_key=0}] run function fossil_frights:game/heists/key/check_held with storage fossil_frights:heist_key
tag @s remove ff_heist_key_return_thief

execute if score #heist_key_used_returned ff_dummy matches 1 run return 0

execute if items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] run return run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if items entity @s weapon.offhand *[custom_data~{itemID:"key"}] run return run item modify entity @s weapon.offhand fossil_frights:deduct_1
return run clear @s *[custom_data~{itemID:"key"}] 1
