## called as: server /reload
## called by: function nlib:core/load via #nlib:core/load/test/start

# confirm loot table exists
scoreboard players set .shulker_box nlib.test 0
execute in minecraft:overworld positioned 0 -64 0 run loot spawn ~ ~ ~ loot minecraft:blocks/shulker_box

# confirm library implementation
execute in minecraft:overworld positioned 0 -64 0 run setblock ~ ~ ~ minecraft:shulker_box[facing=up]{Items:[{Slot:0b, id:"minecraft:stick", count:1}], lock:{components:{"minecraft:custom_data":{id:master_key}}}} strict
execute in minecraft:overworld positioned 0 -64 0 run loot replace block ~ ~ ~ container.0 mine ~ ~ ~ minecraft:fishing_rod[minecraft:custom_data={drop_contents:true}]
execute in minecraft:overworld positioned 0 -64 0 unless items block ~ ~ ~ container.0 minecraft:stick run scoreboard players set .shulker_box nlib.test 1
execute in minecraft:overworld positioned 0 -64 0 run item replace block ~ ~ ~ container.0 with minecraft:air
