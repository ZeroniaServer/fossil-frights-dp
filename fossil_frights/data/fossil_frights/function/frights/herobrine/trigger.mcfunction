execute unless entity @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
scoreboard players set $herobrine_state ff_game_state 4
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator,limit=1,sort=random] at @s rotated ~ 0 run summon minecraft:mannequin ^ ^ ^-0.5 {Tags:["ff_herobrine"],Silent:true,Invulnerable:true,NoGravity:false,pose:"standing",hide_description:true,profile:{model:"wide",texture:"fossil_frights:skins/herobrine"}}
