kill @e[type=minecraft:pig,tag=ff_pig_wrangler_pig]
summon minecraft:pig 70 80 57 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig"],Team:"ff_pink_pig"}
attribute @e[type=minecraft:pig,tag=ff_pig_wrangler_pig,sort=nearest,limit=1] minecraft:movement_speed base set 0
