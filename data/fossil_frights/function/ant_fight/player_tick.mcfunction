execute if entity @s[tag=ff_ant_fight] unless entity @s[gamemode=adventure,tag=!ff_active] run function fossil_frights:ant_fight/exit
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_leaf_use > @s ff_ant_leaf_seen run function fossil_frights:ant_fight/mark_projectile
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/check_hits
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/prevent_drop
execute if entity @s[tag=ff_ant_fight] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=ff_ant_fight] unless data entity @s {Inventory:[{id:"minecraft:snowball",components:{"minecraft:custom_data":{ff_ant_leaf:1b}}}]} run give @s minecraft:snowball[minecraft:item_name={text:"Infinileaf",color:"green",italic:false},minecraft:lore=[{text:"Shoot ",color:"dark_green",italic:false,extra:[{text:"- Right Click",color:"white",italic:false}]},{text:"Leave ",color:"red",italic:false,extra:[{text:"- Drop",color:"white",italic:false}]}],minecraft:use_cooldown={seconds:0.25f,cooldown_group:"fossil_frights:infinileaf"},minecraft:max_stack_size=1,minecraft:custom_data={ff_ant_leaf:1b}] 1
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_score 0
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_top_score 0
execute if entity @s[tag=ff_ant_fight] run scoreboard players add @s ff_ant_immunity 0
execute if entity @s[tag=ff_ant_fight,scores={ff_ant_immunity=1..}] run scoreboard players remove @s ff_ant_immunity 1
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_score > @s ff_ant_top_score run scoreboard players operation @s ff_ant_top_score = @s ff_ant_score
execute if entity @s[tag=ff_ant_fight] if score @s ff_ant_score matches 10.. run advancement grant @s only fossil_frights:03_lobby/warrior_ant
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/check_best
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/lobby_sneak_tick
execute if entity @s[tag=ff_ant_fight] run title @s actionbar [{"text":"Ant Score: ","color":"#71de75"},{"score":{"name":"@s","objective":"ff_ant_score"},"color":"white"}]
execute if entity @s[tag=ff_ant_fight] run return 0
execute unless entity @s[gamemode=adventure,tag=!ff_active] if entity @s[tag=ff_ant_lobby_blind] run function fossil_frights:ant_fight/lobby_sneak/reset
execute if entity @s[gamemode=adventure,tag=!ff_active] positioned -36.5 76 104.5 if entity @s[distance=..24] run function fossil_frights:ant_fight/lobby_sneak_tick
execute if entity @s[gamemode=adventure,tag=!ff_active] positioned -36.5 76 104.5 unless entity @s[distance=..24] run function fossil_frights:ant_fight/lobby_sneak/reset
execute if entity @s[gamemode=adventure,tag=!ff_active] positioned -20.5 76.5 100.5 if entity @s[distance=..1.2] run function fossil_frights:ant_fight/enter
execute if entity @s[gamemode=adventure,tag=!ff_active] positioned -52.5 77.5 95.5 if entity @s[distance=..1.2] run function fossil_frights:ant_fight/enter
execute if entity @s[gamemode=adventure,tag=!ff_active] positioned -40 74 114 if entity @s[distance=..1.2] run function fossil_frights:ant_fight/enter
