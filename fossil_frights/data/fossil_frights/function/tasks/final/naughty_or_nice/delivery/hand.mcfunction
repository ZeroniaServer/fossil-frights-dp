$item modify entity @s weapon.$(hand) fossil_frights:deduct_1
execute at @s run playsound minecraft:block.note_block.bell master @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.7 1.5
$function fossil_frights:tasks/final/naughty_or_nice/delivery/delivered {slot:$(slot)}
