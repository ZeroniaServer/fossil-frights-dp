summon cave_spider ^ ^ ^1 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,Tags:["security_camera","new"],Invulnerable:1b,attributes:[{id:"scale",base:3.5}]}
execute rotated as @s run rotate @n[type=cave_spider,tag=security_camera,tag=new] ~ ~
execute on passengers run tag @n[type=cave_spider,tag=security_camera,tag=new] remove new