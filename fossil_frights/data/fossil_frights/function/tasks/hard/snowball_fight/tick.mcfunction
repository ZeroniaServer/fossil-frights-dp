execute if entity @a[predicate=fossil_frights:player/team/guard,x=38,y=80,z=33,dx=7,dy=2,dz=5,limit=1] run effect give @e[type=minecraft:snow_golem,tag=ff_snowball_fight_golem] minecraft:glowing 2 0 true
execute unless entity @a[predicate=fossil_frights:player/team/guard,x=38,y=80,z=33,dx=7,dy=2,dz=5,limit=1] run effect clear @e[type=minecraft:snow_golem,tag=ff_snowball_fight_golem] minecraft:glowing
execute as @a[predicate=fossil_frights:player/team/guard] store result score @s ff_snowball_fight_count run clear @s minecraft:snowball 0
execute as @a[predicate=fossil_frights:player/team/guard,scores={ff_snowball_fight_count=1..}] run function fossil_frights:tasks/hard/snowball_fight/show_actionbar
execute if entity @a[predicate=fossil_frights:player/team/guard,scores={ff_snowball_fight_count=1..},limit=1] as @a[gamemode=spectator,tag=!ff_tutorial] run function fossil_frights:tasks/hard/snowball_fight/show_actionbar
execute if entity @a[predicate=fossil_frights:player/team/guard,scores={ff_snowball_fight_count=1..},limit=1] run schedule function fossil_frights:player/actionbar/manager 1t append
