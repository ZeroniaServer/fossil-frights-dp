$scoreboard players display numberformat #message ff_dummy fixed [{translate:"ff.task_complete",color:"green",with:[{translate:"ff.task.$(task_name)"}]}]

scoreboard players set @a[team=ff_guard] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[gamemode=spectator,tag=!ff_tutorial] ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @a[team=ff_guard] ff_actionbar_manager.slot.generic fixed {score:{name:"#message",objective:"ff_dummy"}}
scoreboard players display numberformat @a[gamemode=spectator,tag=!ff_tutorial] ff_actionbar_manager.slot.generic fixed {score:{name:"#message",objective:"ff_dummy"}}
schedule function fossil_frights:player/actionbar/manager 1t append

execute as @a[tag=ff_frights_feedback_viewer] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.9 1.6
