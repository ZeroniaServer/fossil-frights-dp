$data modify storage fossil_frights:door text_data set value {text:"",extra:[{translate:"ff.sign.$(sign_text_translation_key).0",color:"$(sign_text_line_1_color)",extra:["\n"]},{translate:"ff.sign.$(sign_text_translation_key).1",color:"$(sign_text_line_2_color)",extra:["\n"]},{translate:"ff.sign.$(sign_text_translation_key).2",color:"$(sign_text_line_3_color)",extra:["\n"]},{translate:"ff.sign.$(sign_text_translation_key).3",color:"$(sign_text_line_4_color)"}]}
data remove storage fossil_frights:door text_data.extra[{color:""}].color

$data modify storage fossil_frights:door input_door_data set value {model_type:"$(model_type)",sound_type:"$(sound_type)",hinge:"$(hinge)",facing:"$(facing)"}
data modify entity @s data.ff_door merge from storage fossil_frights:door input_door_data
$setblock ~ ~ ~ oxidized_copper_door[facing=$(facing),hinge=$(hinge)] strict
execute at @s run function fossil_frights:interactions/door/reset/reset_door

execute on passengers run kill @s[type=minecraft:text_display,tag=ff_door.sign_text]
tag @s add ff_door.editor_target
execute unless data storage fossil_frights:door text_data.extra[{translate:"ff.sign..0"}] summon minecraft:text_display run function fossil_frights:interactions/door/editor/set_text
tag @s remove ff_door.editor_target
execute rotated as @s on passengers run rotate @s ~ ~

data remove storage fossil_frights:door text_data
data remove storage fossil_frights:door input_door_data