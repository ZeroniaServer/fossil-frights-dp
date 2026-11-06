execute at @s run particle minecraft:poof ~ ~0.2 ~ 0.25 0.2 0.25 0.03 18 force
execute at @s run playsound minecraft:block.note_block.bell master @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.7 1.5
item modify entity @s contents fossil_frights:deduct_1
$function fossil_frights:tasks/final/naughty_or_nice/delivery/delivered {slot:$(slot)}
