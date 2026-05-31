summon cave_spider ^ ^ ^1 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","new"],Team:"ff_security_camera",Invulnerable:1b,attributes:[{id:"scale",base:0.0625}]}
execute rotated as @s run rotate @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] ~ ~
team join ff_security_camera @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest]
execute if entity @s[x=-26,y=80,z=14,dx=10,dy=8,dz=23] run scoreboard players set @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] ff_security_camera 1
execute if entity @s[x=16,y=80,z=14,dx=10,dy=8,dz=29] run scoreboard players set @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] ff_security_camera 2
execute if entity @s[x=-33,y=68,z=9,dx=39,dy=9,dz=58] run scoreboard players set @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] ff_security_camera 3
execute if entity @s[x=-18,y=94,z=67,dx=44,dy=16,dz=22] run scoreboard players set @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] ff_security_camera 4
execute if entity @s[x=16,y=94,z=24,dx=11,dy=7,dz=41] run scoreboard players set @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] ff_security_camera 5
tag @e[type=cave_spider,tag=security_camera,tag=new,limit=1,sort=nearest] remove new
