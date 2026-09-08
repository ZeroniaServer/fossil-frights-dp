playsound minecraft:entity.generic.eat master @a ~ ~ ~ 0.8 1
execute at @s run particle minecraft:block{block_state:{Name:"minecraft:honeycomb_block"}} ~ ~ ~ 0 0 0 0.06 18 force
execute as @a[tag=ff_pizza_box.player,limit=1] run effect give @s minecraft:speed 5 0 true
