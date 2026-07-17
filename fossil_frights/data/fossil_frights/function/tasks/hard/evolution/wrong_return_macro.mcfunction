$kill @e[type=minecraft:ocelot,tag=$(tag)]
$kill @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=$(tag)]
$tp @s $(x) $(y) $(z) 180 0
$summon minecraft:interaction $(x) $(y) $(z) {Tags:["ff_evolution_hitbox","$(tag)"],width:1.35f,height:2.25f,response:1b}
