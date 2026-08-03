# Probe the placement position, rather than the guard's position, against the basement volume.
summon minecraft:marker ~ ~ ~ {Tags:["ff_trap_placement_probe"]}
execute as @e[type=minecraft:marker,tag=ff_trap_placement_probe,sort=nearest,limit=1,distance=..0.1] if entity @s[x=-33,y=68,z=9,dx=39,dy=9,dz=58] run tag @s add ff_trap_placement_probe.basement
execute if entity @e[type=minecraft:marker,tag=ff_trap_placement_probe,tag=ff_trap_placement_probe.basement,distance=..0.1] run function fossil_frights:items/heists/trap/common/place_at_cursor/basement
execute unless entity @e[type=minecraft:marker,tag=ff_trap_placement_probe,tag=ff_trap_placement_probe.basement,distance=..0.1] run function fossil_frights:items/heists/trap/common/place_at_cursor/finish
kill @e[type=minecraft:marker,tag=ff_trap_placement_probe,distance=..0.1]
