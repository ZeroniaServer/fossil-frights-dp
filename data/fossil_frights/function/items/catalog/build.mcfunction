kill @e[type=minecraft:chest_minecart,tag=ff_admin_item_catalog,distance=..2]
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_item_catalog","ff_admin_item_page_1"],NoGravity:1b,Invulnerable:1b,Silent:1b}
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ff_admin_item_catalog","ff_admin_item_page_2"],NoGravity:1b,Invulnerable:1b,Silent:1b}

# Storage items are the same definitions consumed by storage locks.
function fossil_frights:items/catalog/from_definition {function:"items/storage/febreeze_rod",path:"definitions.storage.febreeze_rod",page:"page_1",slot:0}
function fossil_frights:items/catalog/from_definition {function:"items/storage/fertilizer",path:"definitions.storage.fertilizer",page:"page_1",slot:1}
function fossil_frights:items/catalog/from_definition {function:"items/storage/water_balloon",path:"definitions.storage.water_balloon",page:"page_1",slot:2}
function fossil_frights:items/catalog/from_definition {function:"items/storage/chlorine_tablet",path:"definitions.storage.chlorine_tablet",page:"page_1",slot:3}
function fossil_frights:items/catalog/from_definition {function:"items/storage/scrap_metal",path:"definitions.storage.scrap_metal",page:"page_1",slot:4}
function fossil_frights:items/catalog/from_definition {function:"items/storage/soap",path:"definitions.storage.soap",page:"page_1",slot:5}
function fossil_frights:items/catalog/from_definition {function:"items/storage/dry_ice",path:"definitions.storage.dry_ice",page:"page_1",slot:6}
function fossil_frights:items/catalog/from_definition {function:"items/storage/fire_tablet",path:"definitions.storage.fire_tablet",page:"page_1",slot:7}
function fossil_frights:items/catalog/from_definition {function:"items/storage/golden_nautilus",path:"definitions.storage.golden_nautilus",page:"page_1",slot:8}
function fossil_frights:items/catalog/from_definition {function:"items/storage/skeleton_plushie",path:"definitions.storage.skeleton_plushie",page:"page_1",slot:9}
function fossil_frights:items/catalog/from_definition {function:"items/storage/fish_food",path:"definitions.storage.fish_food",page:"page_1",slot:10}
function fossil_frights:items/catalog/from_definition {function:"items/storage/copper_shuffle",path:"definitions.storage.copper_shuffle",page:"page_1",slot:11}
function fossil_frights:items/catalog/from_definition {function:"items/storage/instant_coffee",path:"definitions.storage.instant_coffee",page:"page_1",slot:12}
function fossil_frights:items/catalog/from_definition {function:"items/storage/empty_popcorn",path:"definitions.storage.empty_popcorn",page:"page_1",slot:13}
function fossil_frights:items/catalog/from_definition {function:"items/storage/pink_jelly",path:"definitions.storage.pink_jelly",page:"page_1",slot:14}
function fossil_frights:items/catalog/from_definition {function:"items/storage/leather",path:"definitions.storage.leather",page:"page_1",slot:15}
function fossil_frights:items/catalog/from_definition {function:"items/storage/brush",path:"definitions.storage.brush",page:"page_1",slot:16}
function fossil_frights:items/catalog/from_definition {function:"items/storage/sponge",path:"definitions.storage.sponge",page:"page_1",slot:17}
function fossil_frights:items/catalog/from_definition {function:"items/storage/cotton_candy",path:"definitions.storage.cotton_candy",page:"page_1",slot:18}
function fossil_frights:items/catalog/from_definition {function:"items/storage/credit_reel",path:"definitions.storage.credit_reel",page:"page_1",slot:19}
function fossil_frights:items/catalog/from_definition {function:"items/storage/lady_bug",path:"definitions.storage.lady_bug",page:"page_1",slot:20}
function fossil_frights:items/catalog/from_definition {function:"items/storage/muddy_sherd",path:"definitions.storage.muddy_sherd",page:"page_1",slot:21}
function fossil_frights:items/catalog/from_definition {function:"items/storage/carrot_cake",path:"definitions.storage.carrot_cake",page:"page_1",slot:22}
function fossil_frights:items/catalog/from_definition {function:"items/storage/cookie",path:"definitions.storage.cookie",page:"page_1",slot:23}

# Items with storage definitions stay sourced from their existing definitions.
function fossil_frights:items/catalog/from_definition {function:"items/plushies/plesiosaur",path:"definitions.plushies.plesiosaur",page:"page_1",slot:24}
function fossil_frights:items/catalog/from_definition {function:"items/plushies/velociraptor",path:"definitions.plushies.velociraptor",page:"page_1",slot:25}
function fossil_frights:items/catalog/from_definition {function:"items/plushies/trike",path:"definitions.plushies.trike",page:"page_1",slot:26}
function fossil_frights:items/catalog/from_definition {function:"items/plushies/t_rex",path:"definitions.plushies.t_rex",page:"page_2",slot:0}
function fossil_frights:items/catalog/from_definition {function:"items/plushies/gold_t_rex",path:"definitions.plushies.gold_t_rex",page:"page_2",slot:1}
function fossil_frights:items/catalog/from_definition {function:"items/plushies/pteradactyl",path:"definitions.plushies.pteradactyl",page:"page_2",slot:2}
function fossil_frights:items/catalog/from_definition {function:"items/plushies/sniffer",path:"definitions.plushies.sniffer",page:"page_2",slot:3}
function fossil_frights:items/catalog/from_definition {function:"items/anvil/leather_boots",path:"definitions.anvil.leather_boots",page:"page_2",slot:4}
function fossil_frights:items/catalog/from_definition {function:"items/anvil/microfiber_cloth",path:"definitions.anvil.microfiber_cloth",page:"page_2",slot:5}
function fossil_frights:items/catalog/from_definition {function:"items/anvil/hoverboard",path:"definitions.anvil.hoverboard",page:"page_2",slot:6}
function fossil_frights:items/catalog/from_definition {function:"items/dna/sniffer",path:"definitions.dna.sniffer",page:"page_2",slot:7}
function fossil_frights:items/catalog/from_definition {function:"items/dna/trike",path:"definitions.dna.trike",page:"page_2",slot:8}
function fossil_frights:items/catalog/from_definition {function:"items/dna/t_rex",path:"definitions.dna.t_rex",page:"page_2",slot:9}
function fossil_frights:items/catalog/from_definition {function:"items/dna/velociraptor",path:"definitions.dna.velociraptor",page:"page_2",slot:10}
function fossil_frights:items/catalog/from_definition {function:"items/dna/plesiosaur",path:"definitions.dna.plesiosaur",page:"page_2",slot:11}
function fossil_frights:items/catalog/from_definition {function:"items/dna/pteradactyl",path:"definitions.dna.pteradactyl",page:"page_2",slot:12}
function fossil_frights:items/catalog/from_definition {function:"items/drinks/bubbly_bat",path:"definitions.drinks.bubbly_bat",page:"page_2",slot:13}
function fossil_frights:items/catalog/from_definition {function:"items/drinks/fossil_fizz",path:"definitions.drinks.fossil_fizz",page:"page_2",slot:14}
function fossil_frights:items/catalog/from_definition {function:"items/drinks/jurassic_juice",path:"definitions.drinks.jurassic_juice",page:"page_2",slot:15}
function fossil_frights:items/catalog/from_definition {function:"items/drinks/pteranadon_twist",path:"definitions.drinks.pteranadon_twist",page:"page_2",slot:16}
function fossil_frights:items/catalog/from_definition {function:"items/drinks/raptor_rush",path:"definitions.drinks.raptor_rush",page:"page_2",slot:17}
function fossil_frights:items/catalog/from_definition {function:"items/drinks/veloci_tea",path:"definitions.drinks.veloci_tea",page:"page_2",slot:18}
function fossil_frights:items/catalog/from_definition {function:"items/other/cubekoin",path:"definitions.other.cubekoin",page:"page_2",slot:19}
function fossil_frights:items/catalog/from_definition {function:"items/other/vault_key",path:"definitions.other.vault_key",page:"page_2",slot:20}
function fossil_frights:items/catalog/from_definition {function:"items/other/basketball",path:"definitions.other.basketball",page:"page_2",slot:21}
function fossil_frights:items/catalog/from_definition {function:"items/other/security_hat",path:"definitions.other.security_hat",page:"page_2",slot:22}
function fossil_frights:items/catalog/from_definition {function:"items/other/confetti_cannon/remote",path:"definitions.other.confetti_cannon.remote",page:"page_2",slot:23}
function fossil_frights:items/catalog/from_definition {function:"items/other/confetti_cannon/cannon",path:"definitions.other.confetti_cannon.cannon",page:"page_2",slot:24}
