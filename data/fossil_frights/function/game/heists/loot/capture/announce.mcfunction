execute as @a[tag=ff_active,gamemode=!spectator] run title @s times 0 20 8
execute as @a[tag=ff_active,gamemode=!spectator] run title @s subtitle [{"text":"+$","color":"yellow","italic":false},{"score":{"name":"@s","objective":"ff_heist_reward"},"color":"yellow","italic":false}]
execute as @a[tag=ff_active,gamemode=!spectator] run title @s title {"text":" "}
execute as @a[gamemode=spectator,tag=!ff_tutorial] run title @s times 0 20 8
execute as @a[gamemode=spectator,tag=!ff_tutorial] run title @s subtitle [{"text":"+$","color":"yellow","italic":false},{"score":{"name":"@s","objective":"ff_heist_reward"},"color":"yellow","italic":false}]
execute as @a[gamemode=spectator,tag=!ff_tutorial] run title @s title {"text":" "}
