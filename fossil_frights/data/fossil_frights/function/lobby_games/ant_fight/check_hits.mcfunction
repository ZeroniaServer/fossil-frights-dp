execute if score @s ff_ant_immunity matches 1.. run return 0

tag @s add ff_ant_fight.check_hits.this
scoreboard players set #hit ff_dummy 0
execute as @e[type=minecraft:snowball,distance=..1.25,limit=1,sort=nearest] on origin unless entity @s[tag=ff_ant_fight.check_hits.this] run scoreboard players set #hit ff_dummy 1
tag @s remove ff_ant_fight.check_hits.this
execute if score #hit ff_dummy matches 0 run return 0

scoreboard players set #hit ff_dummy 0
execute store success score #hit ff_dummy as @e[type=minecraft:snowball,distance=..1.25,limit=1,sort=nearest] on origin run function fossil_frights:lobby_games/ant_fight/increment_ant_score
execute unless score #hit ff_dummy matches 1 run return 0

particle minecraft:tinted_leaves{color:[0.55,0.8,0.35,1.0]} ~ ~1 ~ 0.35 0.45 0.35 0.5 50
playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1
execute store success score #decremented ff_dummy if score @s ff_ant_score matches 1..
execute if score @s ff_ant_score matches 1.. run scoreboard players remove @s ff_ant_score 1
kill @e[type=minecraft:snowball,distance=..1.25,limit=1,sort=nearest]
function fossil_frights:lobby_games/ant_fight/hit

execute if score #decremented ff_dummy matches 1 run function fossil_frights:player/actionbar/show/lobby_game/ant_fight.hit_decremented
execute if score #decremented ff_dummy matches 0 run function fossil_frights:player/actionbar/show/lobby_game/ant_fight.hit_zero

scoreboard players reset #ant_fight_attacker_name ff_dummy
