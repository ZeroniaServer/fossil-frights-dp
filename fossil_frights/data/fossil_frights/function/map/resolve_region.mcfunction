execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless entity @s[team=ff_guard] run return 0

# floor 1
execute at @s if predicate fossil_frights:location/room/floor_1/foyer run return run function fossil_frights:map/region/foyer
execute at @s if predicate fossil_frights:location/room/floor_1/gift_shop run return run function fossil_frights:map/region/gift_shop
execute at @s if predicate fossil_frights:location/room/floor_1/cafe run return run function fossil_frights:map/region/cafe
execute at @s if predicate fossil_frights:location/room/floor_1/lower_bathroom run return run function fossil_frights:map/region/bathroom_1
execute at @s if predicate fossil_frights:location/room/floor_1/skeletons run return run function fossil_frights:map/region/skeletons
execute at @s if predicate fossil_frights:location/room/floor_1/aquatic run return run function fossil_frights:map/region/aquatic
execute at @s if predicate fossil_frights:location/room/floor_1/theater run return run function fossil_frights:map/region/theatre

# ruins
execute at @s if predicate fossil_frights:location/room/ruins/deep_dark run return run function fossil_frights:map/region/deep_dark
execute at @s if predicate fossil_frights:location/room/ruins run return run function fossil_frights:map/region/ruins

# floor 2
execute at @s if predicate fossil_frights:location/room/floor_2/humans run return run function fossil_frights:map/region/humans
execute at @s if predicate fossil_frights:location/room/floor_2/upper_bathroom run return run function fossil_frights:map/region/bathroom_2
execute at @s if predicate fossil_frights:location/room/floor_2/terrarium run return run function fossil_frights:map/region/terrarium
execute at @s if predicate fossil_frights:location/room/floor_2/observatory run return run function fossil_frights:map/region/observatory
execute at @s if predicate fossil_frights:location/room/floor_2/aviary run return run function fossil_frights:map/region/aviary
execute at @s if predicate fossil_frights:location/room/floor_2/balcony run return run function fossil_frights:map/region/balcony
execute at @s if predicate fossil_frights:location/room/floor_2/mezzanine run return run function fossil_frights:map/region/mezzanine
execute at @s if predicate fossil_frights:location/room/floor_2/left_hall run return run function fossil_frights:map/region/left_hall
execute at @s if predicate fossil_frights:location/room/floor_2/eggshibit run return run function fossil_frights:map/region/eggshibit

# basement
execute at @s if predicate fossil_frights:location/room/basement run return run function fossil_frights:map/region/basement

# start room
execute at @s if predicate fossil_frights:location/room/start_room run return run function fossil_frights:map/region/start_room

# floor 3
execute at @s if predicate fossil_frights:location/room/floor_3/timeline/precambrian run return run function fossil_frights:map/region/precambrian
execute at @s if predicate fossil_frights:location/room/floor_3/timeline/paleozoic run return run function fossil_frights:map/region/paleozoic
execute at @s if predicate fossil_frights:location/room/floor_3/timeline/mesozoic run return run function fossil_frights:map/region/mesozoic
execute at @s if predicate fossil_frights:location/room/floor_3/timeline/cenozoic run return run function fossil_frights:map/region/cenozoic
