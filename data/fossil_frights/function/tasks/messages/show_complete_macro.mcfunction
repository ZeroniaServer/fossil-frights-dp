$title @a[tag=ff_active] actionbar [{"text":"$(task_name) Complete!","color":"green","italic":false}]
$title @a[gamemode=spectator,tag=!ff_tutorial] actionbar [{"text":"$(task_name) Complete!","color":"green","italic":false}]
execute as @a[tag=ff_active] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.9 1.6
