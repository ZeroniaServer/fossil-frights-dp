$scoreboard players set $h_$(id) ff_hallucination 1
scoreboard players add #h_active_count ff_hallucination 1
scoreboard players set @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic 65
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hallucination.prefix",color:"gray"},{translate:"$(message)",color:"$(color)"}]
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hallucination.prefix",color:"gray"},{translate:"$(message)",color:"$(color)"}]
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hallucination.prefix",color:"gray"},{translate:"$(message)",color:"$(color)"}]
schedule function fossil_frights:player/actionbar/manager 1t append
$function fossil_frights:hallucination/effects/$(id)/start
function fossil_frights:game/bossbar/update_hazards
