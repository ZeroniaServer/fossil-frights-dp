kill @e[type=minecraft:chest_minecart,tag=ff_admin_item_catalog,distance=..2]
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_item_catalog","ff_admin_item_page_1"],NoGravity:1b,Invulnerable:1b,Silent:1b}
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_item_catalog","ff_admin_item_page_2"],NoGravity:1b,Invulnerable:1b,Silent:1b}

# Storage items are the same definitions consumed by storage locks.
function fossil_frights:items/catalog/from_loot {loot:"items/storage/febreeze_rod",page:"page_1",slot:0}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/fertilizer",page:"page_1",slot:1}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/water_balloon",page:"page_1",slot:2}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/chlorine_tablet",page:"page_1",slot:3}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/scrap_metal",page:"page_1",slot:4}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/soap",page:"page_1",slot:5}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/dry_ice",page:"page_1",slot:6}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/fire_tablet",page:"page_1",slot:7}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/golden_nautilus",page:"page_1",slot:8}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/skeleton_plushie",page:"page_1",slot:9}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/fish_food",page:"page_1",slot:10}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/copper_shuffle",page:"page_1",slot:11}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/instant_coffee",page:"page_1",slot:12}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/empty_popcorn",page:"page_1",slot:13}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/pink_jelly",page:"page_1",slot:14}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/leather",page:"page_1",slot:15}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/brush",page:"page_1",slot:16}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/sponge",page:"page_1",slot:17}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/cotton_candy",page:"page_1",slot:18}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/credit_reel",page:"page_1",slot:19}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/lady_bug",page:"page_1",slot:20}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/muddy_sherd",page:"page_1",slot:21}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/carrot_cake",page:"page_1",slot:22}
function fossil_frights:items/catalog/from_loot {loot:"items/storage/cookie",page:"page_1",slot:23}

# Loot tables are the canonical source for every catalogue item.
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/plesiosaur",page:"page_1",slot:24}
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/velociraptor",page:"page_1",slot:25}
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/trike",page:"page_1",slot:26}
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/t_rex",page:"page_2",slot:0}
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/gold_t_rex",page:"page_2",slot:1}
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/pterodactyl",page:"page_2",slot:2}
function fossil_frights:items/catalog/from_loot {loot:"items/plushies/sniffer",page:"page_2",slot:3}
function fossil_frights:items/catalog/from_loot {loot:"items/anvil/leather_boots",page:"page_2",slot:4}
function fossil_frights:items/catalog/from_loot {loot:"items/anvil/microfiber_cloth",page:"page_2",slot:5}
function fossil_frights:items/catalog/from_loot {loot:"items/anvil/hoverboard",page:"page_2",slot:6}
function fossil_frights:items/catalog/from_loot {loot:"items/dna/sniffer",page:"page_2",slot:7}
function fossil_frights:items/catalog/from_loot {loot:"items/dna/trike",page:"page_2",slot:8}
function fossil_frights:items/catalog/from_loot {loot:"items/dna/t_rex",page:"page_2",slot:9}
function fossil_frights:items/catalog/from_loot {loot:"items/dna/velociraptor",page:"page_2",slot:10}
function fossil_frights:items/catalog/from_loot {loot:"items/dna/plesiosaur",page:"page_2",slot:11}
function fossil_frights:items/catalog/from_loot {loot:"items/dna/pterodactyl",page:"page_2",slot:12}
function fossil_frights:items/catalog/from_loot {loot:"items/drinks/bubbly_bat",page:"page_2",slot:13}
function fossil_frights:items/catalog/from_loot {loot:"items/drinks/fossil_fizz",page:"page_2",slot:14}
function fossil_frights:items/catalog/from_loot {loot:"items/drinks/jurassic_juice",page:"page_2",slot:15}
function fossil_frights:items/catalog/from_loot {loot:"items/drinks/pteranadon_twist",page:"page_2",slot:16}
function fossil_frights:items/catalog/from_loot {loot:"items/drinks/raptor_rush",page:"page_2",slot:17}
function fossil_frights:items/catalog/from_loot {loot:"items/drinks/veloci_tea",page:"page_2",slot:18}
function fossil_frights:items/catalog/from_loot {loot:"items/other/dinocoin",page:"page_2",slot:19}
function fossil_frights:items/catalog/from_loot {loot:"items/other/vault_key",page:"page_2",slot:20}
function fossil_frights:items/catalog/from_loot {loot:"items/other/basketball",page:"page_2",slot:21}
function fossil_frights:items/catalog/from_loot {loot:"items/key/storage_key",page:"page_2",slot:22}
function fossil_frights:items/catalog/from_loot {loot:"items/other/confetti_cannon/remote",page:"page_2",slot:23}
function fossil_frights:items/catalog/from_loot {loot:"items/heists/hazard_cookie",page:"page_2",slot:24}
