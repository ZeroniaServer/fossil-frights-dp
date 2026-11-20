$scoreboard players set $h_$(id) ff_hallucination 1
scoreboard players add #h_active_count ff_hallucination 1
$function fossil_frights:run_breakdown/event/add {code:"H",id:"$(breakdown_on)"}
scoreboard players set @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic 65
execute unless entity @a[tag=ff_dinonog_onboarded] as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:player/actionbar/show/fallback_instruction/drink_dinonog
execute unless entity @a[tag=ff_dinonog_onboarded] as @a[predicate=fossil_frights:player/team/guard] run tag @s add ff_dinonog_onboarded
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hallucination.prefix",color:"gray"},{translate:"$(message)",color:"$(color)"}]
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hallucination.prefix",color:"gray"},{translate:"$(message)",color:"$(color)"}]
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hallucination.prefix",color:"gray"},{translate:"$(message)",color:"$(color)"}]
schedule function fossil_frights:player/actionbar/manager 1t append
$function fossil_frights:hallucination/effects/$(id)/start
function fossil_frights:game/bossbar/update_hazards
