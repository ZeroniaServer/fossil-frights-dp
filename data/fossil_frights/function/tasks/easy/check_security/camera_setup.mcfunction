kill @e[type=cave_spider,tag=security_camera]
summon cave_spider -24.075651906238733 86.50059787065922 15.062585052031963 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_1"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[-38.711875915527344F,38.700042724609375F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider 25.914136946201324 86.66523033380508 15.215650856494904 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_2"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[38.707157135009766F,33.17756652832031F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider -29.145325154066086 74.3110414174761 30.362989962100983 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_3"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[-27.523162841796875F,25.487943649291992F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider -2.8441637456417084 107.27698918331578 68.26613503694534 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_4"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[30.02850341796875F,35.63517761230469F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider 26.17312800884247 98.73619264364243 47.699415504932404 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_5"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[20.236602783203125F,19.046382904052734F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider 18.5 88.5 44.5 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_6"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[35F,20F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider -3.5 74.7 22.5 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_7"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[0F,20F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider -25.5 98.2 59.5 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_8"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[-150F,20F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider 0.5 100.2 10.5 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_9"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[0F,40F],attributes:[{id:"scale",base:0.0625}]}
summon cave_spider 50.5 94.2 32.5 {active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["security_camera","security_camera_10"],Team:"ff_security_camera",Invulnerable:1b,Rotation:[0F,30F],attributes:[{id:"scale",base:0.0625}]}
scoreboard players set @e[type=cave_spider,tag=security_camera_1] ff_security_camera 1
scoreboard players set @e[type=cave_spider,tag=security_camera_2] ff_security_camera 2
scoreboard players set @e[type=cave_spider,tag=security_camera_3] ff_security_camera 3
scoreboard players set @e[type=cave_spider,tag=security_camera_4] ff_security_camera 4
scoreboard players set @e[type=cave_spider,tag=security_camera_5] ff_security_camera 5
scoreboard players set @e[type=cave_spider,tag=security_camera_6] ff_security_camera 6
scoreboard players set @e[type=cave_spider,tag=security_camera_7] ff_security_camera 7
scoreboard players set @e[type=cave_spider,tag=security_camera_8] ff_security_camera 8
scoreboard players set @e[type=cave_spider,tag=security_camera_9] ff_security_camera 9
scoreboard players set @e[type=cave_spider,tag=security_camera_10] ff_security_camera 10
team join ff_security_camera @e[type=cave_spider,tag=security_camera]
