scoreboard players set @s ff_bat_bug_inventory_count 0
execute store success score @s ff_bat_bug_inventory_count run data get entity @s Inventory[{components:{"minecraft:custom_data":{itemID:"lady_bug"}}}].components."minecraft:custom_data".ff_heist_lady_bug_timer
execute if score @s ff_bat_bug_inventory_count matches 1 run execute store result score @s ff_bat_bug_timer run data get entity @s Inventory[{components:{"minecraft:custom_data":{itemID:"lady_bug"}}}].components."minecraft:custom_data".ff_heist_lady_bug_timer
execute if score @s ff_bat_bug_inventory_count matches 0 run scoreboard players operation @s ff_bat_bug_timer = $bat_bug_timer_heist_cfg ff_bat_bug_timer
scoreboard players set @s ff_bat_bug_bar 20
