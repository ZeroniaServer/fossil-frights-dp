execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute store result score $heist_reveal_thief_msg ff_heist run random value 1..3
execute store result score $heist_reveal_guard_msg ff_heist run random value 1..3
title @a[tag=ff_active] times 0 30 40
execute if score $heist_reveal_thief_msg ff_heist matches 1 run title @a[tag=ff_heist_thief] subtitle {"translate":"ff.heist.thief.goodluck.1","color":"red","italic":false}
execute if score $heist_reveal_thief_msg ff_heist matches 2 run title @a[tag=ff_heist_thief] subtitle {"translate":"ff.heist.thief.goodluck.2","color":"red","italic":false}
execute if score $heist_reveal_thief_msg ff_heist matches 3 run title @a[tag=ff_heist_thief] subtitle {"translate":"ff.heist.thief.goodluck.3","color":"red","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 1 run title @a[tag=ff_heist_guard] subtitle {"translate":"ff.heist.guard.goodluck.1","color":"gold","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 2 run title @a[tag=ff_heist_guard] subtitle {"translate":"ff.heist.guard.goodluck.2","color":"gold","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 3 run title @a[tag=ff_heist_guard] subtitle {"translate":"ff.heist.guard.goodluck.3","color":"gold","italic":false}
title @a[tag=ff_active] title {"text":" "}
execute as @a[tag=ff_active,gamemode=!spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute as @a[gamemode=spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
function fossil_frights:game/heists/start_reveal/go
