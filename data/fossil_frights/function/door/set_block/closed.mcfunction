$execute at @s run setblock ~ ~ ~ $(block_type)[facing=$(block_facing),hinge=$(block_hinge),half=lower,open=false] strict
$execute at @s run setblock ~ ~1 ~ $(block_type)[facing=$(block_facing),hinge=$(block_hinge),half=upper,open=false] strict
execute at @s align xyz positioned ~ ~-0.001 ~ run item modify entity @e[limit=1,dx=0,type=item_display,tag=ff_door.display] contents fossil_frights:restricted_area_door/set_open/false
execute at @s align xyz positioned ~ ~-0.001 ~ run data modify entity @e[limit=1,dx=0,type=text_display,tag=ff_door.display] transformation set value {right_rotation:[0,0,0,1],scale:[0.5,0.5,1],left_rotation:{axis:[0,1,0],angle:3.14159265359},translation:[0,1.27083333312,-0.61]}
