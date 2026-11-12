advancement revoke @s only fossil_frights:items/coal/get_hit

execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute if entity @s[gamemode=spectator] run return 0
execute unless predicate fossil_frights:player/is_playing run return 0
execute on attacker unless items entity @s weapon.mainhand *[custom_data~{itemID:"coal"}] run return 0

effect give @s minecraft:blindness 4 0 false

execute on attacker at @s run playsound minecraft:entity.warden.attack_impact player @a[distance=..15] ~ ~ ~ 1 1
execute on attacker at @s anchored eyes rotated ~ 0 run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil_frights:display/frightmas/task/coal"}}} ^ ^-0.3 ^0.4 0.1 0.1 0.1 0.04 5
execute on attacker run item modify entity @s weapon.mainhand fossil_frights:deduct_1
