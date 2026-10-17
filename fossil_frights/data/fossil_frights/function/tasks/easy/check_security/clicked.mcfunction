advancement revoke @s only fossil_frights:tasks/easy/check_security/click
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return run function fossil_frights:items/heists/camera_remote/start
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute store result score @s ff_fright_roll run random value 1..2
execute if score @s ff_fright_roll matches 1 run function fossil_frights:frights/spider/trigger
function fossil_frights:tasks/easy/check_security/complete
execute if score @s ff_fright_roll matches 1 run playsound minecraft:entity.spider.death master @s ~ ~ ~ 1 1 1
