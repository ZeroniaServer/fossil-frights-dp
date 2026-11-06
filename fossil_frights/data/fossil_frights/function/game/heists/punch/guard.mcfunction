advancement revoke @s only fossil_frights:misc/heists_punch_guard
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/thief,gamemode=!spectator] run return 0
execute if score @s ff_heist_punch_cd matches 1.. run return 0
tag @s add ff_heist_key_return_thief
execute unless entity @s[tag=ff_heist_camera_punch] as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator,distance=..4,sort=nearest,limit=1] run function fossil_frights:game/heists/key/steal
execute if entity @s[tag=ff_heist_camera_punch] at @s as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy,distance=..4,sort=nearest,limit=1] run function fossil_frights:game/heists/key/steal_camera_owner
tag @s remove ff_heist_key_return_thief
execute store result score @s ff_heist_punch_cd run compute default integer fossil_frights:invisipunch_cooldown
scoreboard players operation @s ff_heist_invis_ticks = #heist_invis_duration ff_heist
execute if score @s ff_heist_key_stolen_this_punch matches 1 run scoreboard players add @s ff_heist_stolen_keys 1
execute if score @s ff_heist_key_stolen_this_punch matches 1 run scoreboard players add @s ff_heist_keys_stolen_round 1
execute if score @s ff_heist_stolen_keys matches 5.. unless score @s ff_heist_keyed_loot_captured_round matches 200.. run effect give @s minecraft:speed 10 1 true
execute unless score @s ff_heist_stolen_keys matches 5.. run effect give @s minecraft:speed 10 0 true
execute if score @s ff_heist_stolen_keys matches 5.. if score @s ff_heist_keyed_loot_captured_round matches 200.. run effect give @s minecraft:speed 10 0 true
function fossil_frights:game/rewards/give_dinocoin
scoreboard players reset @s ff_heist_key_stolen_this_punch
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.8
particle minecraft:cloud ~ ~1 ~ 0.25 0.35 0.25 0.02 20
effect give @s minecraft:invisibility 8 0 true
function fossil_frights:game/heists/invisibility_fx/check_player
