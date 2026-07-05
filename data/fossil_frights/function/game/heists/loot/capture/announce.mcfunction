execute as @a[team=ff_guard,gamemode=!spectator] run title @s times 0 20 8
execute as @a[team=ff_guard,gamemode=!spectator] run title @s subtitle [{"text":"+$","color":"yellow","italic":false},{"score":{"name":"@s","objective":"ff_heist_reward"},"color":"yellow","italic":false}]
execute as @a[team=ff_guard,gamemode=!spectator] run title @s title {"text":" "}
execute as @a[gamemode=spectator,tag=!ff_tutorial] run title @s times 0 20 8
execute as @a[gamemode=spectator,tag=!ff_tutorial] run title @s subtitle [{"text":"+$","color":"yellow","italic":false},{"score":{"name":"@s","objective":"ff_heist_reward"},"color":"yellow","italic":false}]
execute as @a[gamemode=spectator,tag=!ff_tutorial] run title @s title {"text":" "}
