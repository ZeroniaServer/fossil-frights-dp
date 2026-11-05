execute unless score #snowball_fight_hit ff_task_state matches 0 run return 0
scoreboard players set #snowball_fight_hit ff_task_state 1
particle minecraft:poof ~ ~1 ~ 0.35 0.4 0.35 0.04 28 force
particle minecraft:snowflake ~ ~1 ~ 0.4 0.45 0.4 0.03 35 force
playsound minecraft:entity.snow_golem.hurt master @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.8 1.1
scoreboard players add $snowball_fight_hits ff_task_state 1
tp @s ~ -100 ~
kill @s
execute if score $snowball_fight_hits ff_task_state matches 3.. run function fossil_frights:tasks/hard/snowball_fight/complete
