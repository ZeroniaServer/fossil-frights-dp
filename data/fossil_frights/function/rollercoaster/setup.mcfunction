function fossil_frights:rollercoaster/end
summon minecraft:minecart 83 72 116 {Tags:["ff_rollercoaster_cart","ff_rc_dir_s"],Invulnerable:1b}
summon minecraft:minecart 83 72 117 {Tags:["ff_rollercoaster_cart","ff_rc_dir_s"],Invulnerable:1b}
summon minecraft:minecart 83 72 118 {Tags:["ff_rollercoaster_cart","ff_rc_dir_s"],Invulnerable:1b}
summon minecraft:minecart 83 72 119 {Tags:["ff_rollercoaster_cart","ff_rc_dir_s"],Invulnerable:1b}
summon minecraft:minecart 83 72 120 {Tags:["ff_rollercoaster_cart","ff_rc_dir_s"],Invulnerable:1b}
summon minecraft:minecart 83 72 121 {Tags:["ff_rollercoaster_cart","ff_rollercoaster_front","ff_rc_dir_s"],Invulnerable:1b}
team join ff_rollercoaster_cart @e[type=minecraft:minecart,tag=ff_rollercoaster_cart]
scoreboard players set $running ff_rollercoaster 0
scoreboard players set $speed_current ff_rollercoaster 0
scoreboard players set $speed_target ff_rollercoaster 10
