data remove storage fossil_frights:tasks tracker_title
execute as @a[tag=ff_active,limit=1] run data modify storage fossil_frights:tasks tracker_title.name set from entity @s bukkit.lastKnownName
execute if data storage fossil_frights:tasks tracker_title.name run function fossil_frights:tasks/tracker/update_title_macro with storage fossil_frights:tasks tracker_title
execute unless data storage fossil_frights:tasks tracker_title.name run scoreboard objectives modify ff_task_tracker displayname [{"text":"TASKS","color":"yellow","italic":false}]
