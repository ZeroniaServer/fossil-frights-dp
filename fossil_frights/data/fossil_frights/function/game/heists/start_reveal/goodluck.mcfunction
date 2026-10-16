execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute store result score $heist_reveal_thief_msg ff_heist run random value 1..3
execute store result score $heist_reveal_guard_msg ff_heist run random value 1..3
title @a[predicate=fossil_frights:player/team/guard] times 0 30 40
title @a[predicate=fossil_frights:player/team/thief] times 0 30 40
execute if score $heist_reveal_thief_msg ff_heist matches 1 run title @a[predicate=fossil_frights:player/team/thief] subtitle {"translate":"ff.heist.thief.goodluck.1","color":"red","italic":false}
execute if score $heist_reveal_thief_msg ff_heist matches 2 run title @a[predicate=fossil_frights:player/team/thief] subtitle {"translate":"ff.heist.thief.goodluck.2","color":"red","italic":false}
execute if score $heist_reveal_thief_msg ff_heist matches 3 run title @a[predicate=fossil_frights:player/team/thief] subtitle {"translate":"ff.heist.thief.goodluck.3","color":"red","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 1 run title @a[predicate=fossil_frights:player/team/guard] subtitle {"translate":"ff.heist.guard.goodluck.1","color":"gold","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 2 run title @a[predicate=fossil_frights:player/team/guard] subtitle {"translate":"ff.heist.guard.goodluck.2","color":"gold","italic":false}
execute if score $heist_reveal_guard_msg ff_heist matches 3 run title @a[predicate=fossil_frights:player/team/guard] subtitle {"translate":"ff.heist.guard.goodluck.3","color":"gold","italic":false}
title @a[predicate=fossil_frights:player/team/guard] title {"text":" "}
title @a[predicate=fossil_frights:player/team/thief] title {"text":" "}
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute as @a[predicate=fossil_frights:player/team/thief,gamemode=!spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute as @a[gamemode=spectator] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1.0 1.0
execute unless score $settings_music_off ff_game_state matches 1 as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run stopsound @s music
execute unless score $settings_music_off ff_game_state matches 1 as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] at @s run playsound fossil_frights:heists.music record @s ~ ~ ~ 1.0 1.0
execute unless score $settings_music_off ff_game_state matches 1 as @a[predicate=fossil_frights:player/team/thief,gamemode=!spectator] run stopsound @s music
execute unless score $settings_music_off ff_game_state matches 1 as @a[predicate=fossil_frights:player/team/thief,gamemode=!spectator] at @s run playsound fossil_frights:heists.music record @s ~ ~ ~ 1.0 1.0
execute unless score $settings_music_off ff_game_state matches 1 as @a[gamemode=spectator] run stopsound @s music
execute unless score $settings_music_off ff_game_state matches 1 as @a[gamemode=spectator] at @s run playsound fossil_frights:heists.music record @s ~ ~ ~ 1.0 1.0

function fossil_frights:game/heists/start_reveal/go
