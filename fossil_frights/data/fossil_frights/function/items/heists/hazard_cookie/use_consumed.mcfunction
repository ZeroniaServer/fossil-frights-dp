advancement revoke @s only fossil_frights:hazard_cookie_consumed
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_thief,gamemode=!spectator] run return 0
advancement grant @s only fossil_frights:02_achievements/heists_intentionally_hazardous

# Guards in the basement make a consumed cookie favour lava, unless lava is active already.
execute if score lava ff_hazard_active matches 1 run return run function fossil_frights:hazard/start/random_no_security
scoreboard players set #basement_guard_count ff_hazard_rng 0
execute as @a[team=ff_guard,gamemode=!spectator,x=-33,y=68,z=9,dx=39,dy=9,dz=58] run scoreboard players add #basement_guard_count ff_hazard_rng 1
execute if score #basement_guard_count ff_hazard_rng matches 2.. run return run function fossil_frights:hazard/start/lava
execute if score #basement_guard_count ff_hazard_rng matches 1 store result score #basement_lava_roll ff_hazard_rng run random value 1..3
execute if score #basement_guard_count ff_hazard_rng matches 1 if score #basement_lava_roll ff_hazard_rng matches 1..2 run return run function fossil_frights:hazard/start/lava
execute if score #basement_guard_count ff_hazard_rng matches 1 run return run function fossil_frights:hazard/start/random_no_security_no_lava
function fossil_frights:hazard/start/random_no_security
