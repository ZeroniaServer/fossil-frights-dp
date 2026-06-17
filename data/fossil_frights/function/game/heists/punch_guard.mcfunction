advancement revoke @s only fossil_frights:heists_punch_guard
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_heist_thief,gamemode=!spectator] run return 0
execute if score @s ff_heist_punch_cd matches 1.. run return 0
scoreboard players operation @s ff_heist_punch_cd = #heist_punch_cooldown ff_heist
scoreboard players operation @s ff_heist_invis_ticks = #heist_invis_duration ff_heist
scoreboard players add @s ff_heist_stolen_keys 1
effect give @s minecraft:invisibility 8 0 true
effect give @s minecraft:speed 20 0 true
item modify entity @s armor.head fossil_frights:game/heists/invisimask/hide
function fossil_frights:game/heists/reward_key
function fossil_frights:game/give_cubekoin
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.8
particle minecraft:cloud ~ ~1 ~ 0.25 0.35 0.25 0.02 20
