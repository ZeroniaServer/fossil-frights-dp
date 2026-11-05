scoreboard players set @s ff_infestation_bite 20
execute store result score #infestation_bite_roll ff_task_state run random value 1..4
execute if score #infestation_bite_roll ff_task_state matches 1..3 run damage @s 1 minecraft:mob_attack by @e[type=minecraft:silverfish,tag=ff_infestation_fixed,distance=..1.5,sort=nearest,limit=1]
