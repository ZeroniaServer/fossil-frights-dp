kill @e[type=minecraft:chest_minecart,tag=ff_admin_loot_catalog,distance=..2]
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_loot_catalog","ff_admin_loot_page_1"],NoGravity:1b,Invulnerable:1b,Silent:1b}
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_loot_catalog","ff_admin_loot_page_2"],NoGravity:1b,Invulnerable:1b,Silent:1b}

function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/night_stick",page:"page_1",slot:0}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/ice_cannon_remote",page:"page_1",slot:1}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/glowtrap_placer",page:"page_1",slot:2}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/camera_remote",page:"page_1",slot:3}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot_book",page:"page_1",slot:4}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/invisimask",page:"page_1",slot:5}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/ice_cannon",page:"page_1",slot:6}
