$title @a[tag=ff_active] actionbar [{"translate":"ff.task_complete","color":"green","italic":false,"with":[{"translate":"ff.task.$(task_name)"}]}]
$title @a[gamemode=spectator,tag=!ff_tutorial] actionbar [{"translate":"ff.task_complete","color":"green","italic":false,"with":[{"translate":"ff.task.$(task_name)"}]}]
execute as @a[tag=ff_active] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.9 1.6
