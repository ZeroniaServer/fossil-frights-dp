kill @e[type=minecraft:interaction,tag=ff_heist_loot_t_rex_skull_click]
function fossil_frights:game/heists/loot/heavy/t_rex_skull/place_collision
summon minecraft:interaction 2.0 93.25 58.0 {width:2.1,height:2.1,response:true,Tags:["ff_heist_loot_interaction","ff_heist_loot_click","ff_heist_loot_t_rex_skull_click"]}
