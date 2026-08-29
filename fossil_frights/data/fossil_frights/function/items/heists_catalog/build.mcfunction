kill @e[type=minecraft:chest_minecart,tag=ff_admin_loot_catalog,distance=..2]
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_loot_catalog","ff_admin_loot_page_1"],NoGravity:true,Invulnerable:true,Silent:true}
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_loot_catalog","ff_admin_loot_page_2"],NoGravity:true,Invulnerable:true,Silent:true}

# Admin Heist Loot 1/2
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/coffee",page:"page_1",slot:0}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/poster_tube",page:"page_1",slot:1}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/ghast_plushie",page:"page_1",slot:2}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/piglin_head",page:"page_1",slot:3}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/popcorn",page:"page_1",slot:4}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/lollipop",page:"page_1",slot:5}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/fishing_rod",page:"page_1",slot:6}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/burger",page:"page_1",slot:7}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/chocolate_cake",page:"page_1",slot:8}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/chondrite",page:"page_1",slot:9}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/ancient_scripture",page:"page_1",slot:10}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/sand_dollar",page:"page_1",slot:11}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/trilobite_fossil",page:"page_1",slot:12}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/golden_sword",page:"page_1",slot:13}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/portal_core",page:"page_1",slot:14}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/common/spyglass",page:"page_1",slot:15}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/rare/giant_scissors",page:"page_1",slot:16}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/t_rex_skull",page:"page_1",slot:18}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/velociraptor_statue",page:"page_1",slot:19}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/vault",page:"page_1",slot:20}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/biplane",page:"page_1",slot:21}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/raptor_skull",page:"page_1",slot:22}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/crab",page:"page_1",slot:23}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/warden",page:"page_1",slot:24}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot/heavy/treasure_chest",page:"page_1",slot:25}

# Admin Heist Loot 2/2
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/night_stick",page:"page_2",slot:0}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/ice_cannon_remote",page:"page_2",slot:1}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/trap_glow",page:"page_2",slot:2}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/camera_remote",page:"page_2",slot:3}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/loot_book",page:"page_2",slot:4}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/invisimask",page:"page_2",slot:9}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/hazard_cookie",page:"page_2",slot:10}
function fossil_frights:items/heists_catalog/from_loot {loot:"items/other/dinocoin",page:"page_2",slot:11}
item modify entity @e[type=minecraft:chest_minecart,tag=ff_admin_loot_page_2,distance=..2,limit=1] container.11 fossil_frights:admin/dinocoin_stack
function fossil_frights:items/heists_catalog/from_loot {loot:"items/heists/one_time_key",page:"page_2",slot:12}
