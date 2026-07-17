advancement revoke @s only fossil_frights:heists_night_stick_hit
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{ff_heist_night_stick:true}] run return 0
scoreboard players set $heist_regen_lock_timer ff_heist 20
gamerule minecraft:natural_health_regeneration false
tag @a[team=ff_thief,gamemode=!spectator,distance=..4,sort=nearest,limit=1] add ff_heist_kill_target
execute if entity @a[tag=ff_heist_kill_target,limit=1] run scoreboard players set @a[tag=ff_heist_kill_target,limit=1] ff_heist_killer_pending 1
execute if entity @a[tag=ff_heist_kill_target,limit=1] run scoreboard players operation @a[tag=ff_heist_kill_target,limit=1] ff_heist_killer_uuid_0 = @s ff_active_uuid_0
execute if entity @a[tag=ff_heist_kill_target,limit=1] run scoreboard players operation @a[tag=ff_heist_kill_target,limit=1] ff_heist_killer_uuid_1 = @s ff_active_uuid_1
execute if entity @a[tag=ff_heist_kill_target,limit=1] run scoreboard players operation @a[tag=ff_heist_kill_target,limit=1] ff_heist_killer_uuid_2 = @s ff_active_uuid_2
execute if entity @a[tag=ff_heist_kill_target,limit=1] run scoreboard players operation @a[tag=ff_heist_kill_target,limit=1] ff_heist_killer_uuid_3 = @s ff_active_uuid_3
execute as @a[tag=ff_heist_kill_target,limit=1] run function fossil_frights:game/heists/night_stick_hit_apply
tag @a[tag=ff_heist_kill_target] remove ff_heist_kill_target
