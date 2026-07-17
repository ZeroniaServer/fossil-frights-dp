$title @a[team=ff_guard] actionbar [{"translate":"ff.task_complete","color":"green","italic":false,"with":[{"translate":"ff.task.$(task_name)"}]}]
$title @a[gamemode=spectator,tag=!ff_tutorial] actionbar [{"translate":"ff.task_complete","color":"green","italic":false,"with":[{"translate":"ff.task.$(task_name)"}]}]
execute as @a[team=ff_guard] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.9 1.6
