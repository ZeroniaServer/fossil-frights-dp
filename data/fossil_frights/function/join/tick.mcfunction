scoreboard players remove @a[scores={ff_join_cooldown=1..}] ff_join_cooldown 1
execute if score $game_running ff_game_state matches 1 unless score $join_pad_mode ff_game_state matches 2 run function fossil_frights:join/setup
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 unless score $join_pad_mode ff_game_state matches 2 run function fossil_frights:join/setup
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] unless score $join_pad_mode ff_game_state matches 2 run function fossil_frights:join/setup
execute if score $game_running ff_game_state matches 1 run scoreboard players set $join_pad_mode ff_game_state 2
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run scoreboard players set $join_pad_mode ff_game_state 2
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] run scoreboard players set $join_pad_mode ff_game_state 2
execute if score $game_running ff_game_state matches 1 run function fossil_frights:join/show/queue
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run function fossil_frights:join/show/queue
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] run function fossil_frights:join/show/queue
execute if score $game_running ff_game_state matches 1 run function fossil_frights:join/show/spectator
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run function fossil_frights:join/show/spectator
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] run function fossil_frights:join/show/spectator
execute if entity @a[tag=ff_in_queue] if score $queue_notify_lock ff_game_state matches 0 if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 as @a[scores={ff_queue_prompt_time=1..}] run function fossil_frights:join/prompt_tick
execute if entity @a[tag=ff_in_queue] run tag @e[type=mannequin,tag=ff_queue_mannequin] remove ff_queue_owner_online
execute if entity @a[tag=ff_in_queue] as @a[tag=ff_in_queue] run function fossil_frights:join/mark_queue_owner_online
execute if entity @a[tag=ff_in_queue] as @e[type=mannequin,tag=ff_queue_mannequin,tag=!ff_queue_owner_online] run function fossil_frights:join/remove_queue_stand
execute if score $game_running ff_game_state matches 1 as @a[x=0,y=80,z=7,dx=2,dy=4,dz=1,gamemode=adventure,scores={ff_join_cooldown=0}] run function fossil_frights:join/queue_enter
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 as @a[x=0,y=80,z=7,dx=2,dy=4,dz=1,gamemode=adventure,scores={ff_join_cooldown=0}] run function fossil_frights:join/queue_enter
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] as @a[x=0,y=80,z=7,dx=2,dy=4,dz=1,gamemode=adventure,scores={ff_join_cooldown=0}] run function fossil_frights:join/queue_enter
execute if score $game_running ff_game_state matches 1 as @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1,tag=!ff_join_spectator_zone] run function fossil_frights:join/spectator_toggle
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 as @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1,tag=!ff_join_spectator_zone] run function fossil_frights:join/spectator_toggle
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] as @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1,tag=!ff_join_spectator_zone] run function fossil_frights:join/spectator_toggle
execute if score $game_running ff_game_state matches 1 run tag @a[tag=ff_join_spectator_zone] remove ff_join_spectator_zone
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run tag @a[tag=ff_join_spectator_zone] remove ff_join_spectator_zone
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] run tag @a[tag=ff_join_spectator_zone] remove ff_join_spectator_zone
execute if score $game_running ff_game_state matches 1 run tag @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1] add ff_join_spectator_zone
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run tag @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1] add ff_join_spectator_zone
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @a[tag=ff_in_queue] run tag @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1] add ff_join_spectator_zone
execute unless entity @a[tag=ff_in_queue] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless score $join_pad_mode ff_game_state matches 1 run function fossil_frights:join/active_setup
execute unless entity @a[tag=ff_in_queue] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 run scoreboard players set $join_pad_mode ff_game_state 1
execute unless entity @a[tag=ff_in_queue] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 run function fossil_frights:join/show/active
execute unless entity @a[tag=ff_in_queue] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 as @a[x=-2.125,y=80,z=7,dx=5.125,dy=4,dz=2,gamemode=adventure,limit=1,sort=nearest] run function fossil_frights:join/active_enter
