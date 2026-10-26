swing @a[limit=1,tag=ff_rock.player] mainhand

scoreboard players set #decorative ff_dummy 0
execute on vehicle if entity @s[type=minecraft:item_display,tag=ff_rock,tag=ff_rock.decorative] run scoreboard players set #decorative ff_dummy 1
execute if score #decorative ff_dummy matches 1 run setblock 55 80 52 air strict

execute if score #decorative ff_dummy matches 0 unless entity @s[tag=ff_rock.unbreakable] if predicate {type:"minecraft:random_chance",chance:0.2} run return run function fossil_frights:items/rock/break

execute store success score #mainhand_is_free ff_dummy unless items entity @a[limit=1,tag=ff_rock.player] weapon.mainhand *
execute if score #mainhand_is_free ff_dummy matches 0 as @a[limit=1,tag=ff_rock.player] run loot give @s loot fossil_frights:items/rock
execute if score #mainhand_is_free ff_dummy matches 1 as @a[limit=1,tag=ff_rock.player] run loot replace entity @s weapon.mainhand loot fossil_frights:items/rock
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.5
execute at @s positioned ~ ~0.25 ~ run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil_frights:display/misc/rock"}}} ~ ~ ~ 0 0 0 0.05 2 force
function fossil_frights:items/rock/kill
