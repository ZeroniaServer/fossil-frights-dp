advancement revoke @s only fossil_frights:heists_night_stick_hit
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_heist_guard,gamemode=!spectator] run return 0
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{ff_heist_night_stick:1b}] run return 0
scoreboard players set $heist_regen_lock_timer ff_heist 20
gamerule naturalRegeneration false
execute as @a[tag=ff_heist_thief,gamemode=!spectator,distance=..4,sort=nearest,limit=1] run function fossil_frights:game/heists/night_stick_hit_apply
