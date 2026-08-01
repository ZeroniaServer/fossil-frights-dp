execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute store result score $heist_reveal_thief_msg ff_heist run random value 1..3
execute store result score $heist_reveal_guard_msg ff_heist run random value 1..3
title @a[team=ff_guard] times 0 30 40
title @a[team=ff_thief] times 0 30 40
execute if score $heist_reveal_thief_msg ff_heist matches 1 run title @a[team=ff_thief] subtitle {"translate":"ff.heist.thief.goodluck.1","color":"red","italic":false}
execute if score $heist_reveal_thief_msg ff_heist matches 2 run title @a[team=ff_thief] subtitle {"translate":"ff.heist.thief.goodluck.2","color":"red","italic":false}
execute if score $heist_reveal_thief_msg ff_heist matches 3 run title @a[team=ff_thief] subtitle {"translate":"ff.heist.thief.goodluck.3","color":"red","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 1 run title @a[team=ff_guard] subtitle {"translate":"ff.heist.guard.goodluck.1","color":"gold","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 2 run title @a[team=ff_guard] subtitle {"translate":"ff.heist.guard.goodluck.2","color":"gold","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 3 run title @a[team=ff_guard] subtitle {"translate":"ff.heist.guard.goodluck.3","color":"gold","italic":false}
title @a[team=ff_guard] title {"text":" "}
title @a[team=ff_thief] title {"text":" "}
execute as @a[team=ff_guard,gamemode=!spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute as @a[team=ff_thief,gamemode=!spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute as @a[gamemode=spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] as @a[team=ff_guard,gamemode=!spectator] at @s run playsound fossil-frights:heists.music record @s ~ ~ ~ 1.0 1.0
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] as @a[team=ff_thief,gamemode=!spectator] at @s run playsound fossil-frights:heists.music record @s ~ ~ ~ 1.0 1.0
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] as @a[gamemode=spectator] at @s run playsound fossil-frights:heists.music record @s ~ ~ ~ 1.0 1.0

function fossil_frights:game/heists/start_reveal/go
