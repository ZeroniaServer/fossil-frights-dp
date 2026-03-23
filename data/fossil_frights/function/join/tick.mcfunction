scoreboard players remove @a[scores={ff_join_cooldown=1..}] ff_join_cooldown 1
function fossil_frights:join/show/queue
function fossil_frights:join/show/spectator
tag @e[type=mannequin,tag=ff_queue_mannequin] remove ff_queue_owner_online
execute as @a[tag=ff_in_queue] run function fossil_frights:join/mark_queue_owner_online
execute as @e[type=mannequin,tag=ff_queue_mannequin,tag=!ff_queue_owner_online] run function fossil_frights:join/remove_queue_stand
execute as @a[x=0,y=80,z=7,dx=2,dy=4,dz=1,gamemode=adventure,scores={ff_join_cooldown=0}] run function fossil_frights:join/queue_enter
execute as @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1,tag=!ff_join_spectator_zone] run function fossil_frights:join/spectator_toggle
tag @a[tag=ff_join_spectator_zone] remove ff_join_spectator_zone
tag @a[x=-3,y=80,z=7,dx=2,dy=4,dz=1] add ff_join_spectator_zone
