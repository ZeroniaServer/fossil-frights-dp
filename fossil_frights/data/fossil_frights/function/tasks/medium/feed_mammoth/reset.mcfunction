function fossil_frights:tasks/medium/feed_mammoth/cleanup
advancement revoke @a only fossil_frights:tasks/medium/feed_mammoth/click
scoreboard players set $feed_mammoth_sel ff_task_state 0
scoreboard players set $feed_mammoth_done ff_task_state 0
execute as @e[type=#fossil_frights:display_entities,tag=ff_feed_mammoth] run data modify entity @s view_range set value 0
