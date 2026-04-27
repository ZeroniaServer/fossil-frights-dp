execute if score $pig_wrangler_in_pen ff_task_state matches 0 if entity @e[type=minecraft:pig,tag=ff_pig_wrangler_pig,x=71,y=80,z=37,dx=1,dy=2,dz=8] run scoreboard players set $pig_wrangler_in_pen ff_task_state 1
scoreboard players set #pig_wrangler_inlove ff_task_state 0
execute as @e[type=minecraft:pig,tag=ff_pig_wrangler_pig,limit=1,sort=nearest] store result score #pig_wrangler_inlove ff_task_state run data get entity @s InLove 1
execute if score #pig_wrangler_inlove ff_task_state matches 1.. run scoreboard players set $pig_wrangler_fed ff_task_state 1
execute if score $pig_wrangler_in_pen ff_task_state matches 1 if score $pig_wrangler_fed ff_task_state matches 1 run function fossil_frights:tasks/hard/pig_wrangler/complete
