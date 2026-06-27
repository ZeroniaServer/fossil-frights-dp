## load region
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld positioned 0 -64 0 unless block ~ ~ ~ minecraft:shulker_box[facing=up] run setblock ~ ~ ~ minecraft:shulker_box[facing=up]{Items:[], lock:{components:{'minecraft:custom_data':{id:master_key}}}} strict
