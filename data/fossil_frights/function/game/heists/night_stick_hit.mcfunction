advancement revoke @s only fossil_frights:heists_night_stick_hit
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_heist_guard,gamemode=!spectator] run return 0
execute as @a[tag=ff_heist_thief,gamemode=!spectator,nbt={HurtTime:10s},distance=..4,sort=nearest,limit=1] run function fossil_frights:game/heists/night_stick_hit_apply
