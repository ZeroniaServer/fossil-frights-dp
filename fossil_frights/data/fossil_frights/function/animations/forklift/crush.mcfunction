execute if entity @s[type=minecraft:mannequin] run function fossil_frights:entity/match/active
execute if entity @s[type=minecraft:mannequin] run return run execute as @a[limit=1,tag=ff_camera_remote_active,predicate=fossil_frights:entity/match/active] if function fossil_frights:items/heists/camera_remote/exit run function fossil_frights:animations/forklift/crush

gamerule minecraft:show_death_messages false
tellraw @a {translate:"ff.death.forklift",with:[{selector:"@s"}]}
advancement grant @s only fossil_frights:02_achievements/days_without_incident_0
kill @s
gamerule minecraft:show_death_messages true
