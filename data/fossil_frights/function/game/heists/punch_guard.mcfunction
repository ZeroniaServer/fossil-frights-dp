advancement revoke @s only fossil_frights:heists_punch_guard
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_thief,gamemode=!spectator] run return 0
execute if score @s ff_heist_punch_cd matches 1.. run return 0
scoreboard players operation @s ff_heist_punch_cd = #heist_punch_cooldown ff_heist
scoreboard players operation @s ff_heist_invis_ticks = #heist_invis_duration ff_heist
scoreboard players add @s ff_heist_stolen_keys 1
scoreboard players add @s ff_heist_keys_stolen_round 1
effect give @s minecraft:invisibility 8 0 true
execute if score @s ff_heist_stolen_keys matches 5.. if score @s ff_heist_keyed_loot_captured_round matches ..199 run effect give @s minecraft:speed 10 1 true
execute unless score @s ff_heist_stolen_keys matches 5.. run effect give @s minecraft:speed 10 0 true
execute if score @s ff_heist_stolen_keys matches 5.. unless score @s ff_heist_keyed_loot_captured_round matches ..199 run effect give @s minecraft:speed 10 0 true
item modify entity @s armor.head fossil_frights:game/heists/invisimask/hide
function fossil_frights:game/heists/reward_key
function fossil_frights:game/give_dinocoin
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.8
particle minecraft:cloud ~ ~1 ~ 0.25 0.35 0.25 0.02 20
