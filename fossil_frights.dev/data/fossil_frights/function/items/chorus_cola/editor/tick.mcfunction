scoreboard players add $editor_was_open ff_chorus_cola_editor 0
scoreboard players set #editor_open ff_dummy 0
execute in minecraft:overworld as @a if items entity @s weapon.* *[custom_data~{ff_chorus_cola_editor:true}] run scoreboard players set #editor_open ff_dummy 1
execute in minecraft:overworld if score #editor_open ff_dummy matches 0 if score $editor_was_open ff_chorus_cola_editor matches 1 run function fossil_frights:items/chorus_cola/editor/save_all/main
execute in minecraft:overworld if score #editor_open ff_dummy matches 1 if score $editor_was_open ff_chorus_cola_editor matches 0 run function fossil_frights:items/chorus_cola/editor/load_all/main
execute in minecraft:overworld if score #editor_open ff_dummy matches 0 run scoreboard players set $editor_was_open ff_chorus_cola_editor 0
execute in minecraft:overworld if score #editor_open ff_dummy matches 1 run scoreboard players set $editor_was_open ff_chorus_cola_editor 1

execute in minecraft:overworld if score #editor_open ff_dummy matches 1 as @e[type=minecraft:marker,tag=ff_chorus_cola_editor] at @s run function fossil_frights:items/chorus_cola/editor/edit/main
execute in minecraft:overworld if score #editor_open ff_dummy matches 1 run kill @e[type=minecraft:marker,tag=ff_chorus_cola_editor]
