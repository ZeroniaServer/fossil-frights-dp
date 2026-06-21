data remove storage fossil_frights:tasks tracker_title
tag @a remove ff_title_first
execute if score $party_mode_active ff_game_state matches 1 run scoreboard objectives modify ff_task_tracker displayname [{"text":"Party Tasks","color":"yellow","italic":false}]
execute if score $party_mode_active ff_game_state matches 1 run return 0
execute if score $run_multiplayer ff_game_state matches 1 as @a[tag=ff_active,limit=1] run tag @s add ff_title_first
execute if score $run_multiplayer ff_game_state matches 1 as @a[tag=ff_title_first,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:tasks tracker_title.name1"}
execute if score $run_multiplayer ff_game_state matches 1 as @a[tag=ff_active,tag=!ff_title_first,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:tasks tracker_title.name2"}
execute if score $run_multiplayer ff_game_state matches 1 if data storage fossil_frights:tasks tracker_title.name1 if data storage fossil_frights:tasks tracker_title.name2 run function fossil_frights:tasks/tracker/update_title_duo_macro with storage fossil_frights:tasks tracker_title
execute if score $run_multiplayer ff_game_state matches 0 as @a[tag=ff_active,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:tasks tracker_title.name"}
execute if score $run_multiplayer ff_game_state matches 0 if data storage fossil_frights:tasks tracker_title.name run function fossil_frights:tasks/tracker/update_title_macro with storage fossil_frights:tasks tracker_title
execute unless data storage fossil_frights:tasks tracker_title.name unless data storage fossil_frights:tasks tracker_title.name2 run scoreboard objectives modify ff_task_tracker displayname [{"text":"Tasks","color":"yellow","italic":false}]
tag @a remove ff_title_first
