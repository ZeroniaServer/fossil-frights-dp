execute as @a[team=ff_thief,tag=!ff_invisibility_fx,predicate=fossil_frights:entity/effects/invisibility] run function fossil_frights:game/heists/invisibility_fx/check_player
execute as @a[team=ff_thief,tag=ff_invisibility_fx,predicate=!fossil_frights:entity/effects/invisibility] run function fossil_frights:game/heists/invisibility_fx/check_player
