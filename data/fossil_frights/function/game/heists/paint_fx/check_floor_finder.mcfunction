execute at @e[type=minecraft:armor_stand,tag=ff_paint_fx_floor_finder,tag=ff_paint_fx_floor_finder.checked_once,predicate=fossil_frights:entity/on_ground] run function fossil_frights:game/heists/paint_fx/create_splat
kill @e[type=minecraft:armor_stand,tag=ff_paint_fx_floor_finder,tag=ff_paint_fx_floor_finder.checked_once]

tag @e[type=minecraft:armor_stand,tag=ff_paint_fx_floor_finder] add ff_paint_fx_floor_finder.checked_once
execute if entity @e[limit=1,type=minecraft:armor_stand,tag=ff_paint_fx_floor_finder] run schedule function fossil_frights:game/heists/paint_fx/check_floor_finder 1t append
