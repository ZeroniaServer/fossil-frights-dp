execute if score lights ff_hazard_active matches 1 run return 0

scoreboard players set lights ff_hazard_active 1
scoreboard players set @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hazard.prefix",color:"gray"},{translate:"ff.actionbar.hazard.lights_out",color:"yellow"}]
scoreboard players display numberformat @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hazard.prefix",color:"gray"},{translate:"ff.actionbar.hazard.lights_out",color:"yellow"}]
scoreboard players display numberformat @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hazard.prefix",color:"gray"},{translate:"ff.actionbar.hazard.lights_out",color:"yellow"}]
schedule function fossil_frights:player/actionbar/manager 1t append
function fossil_frights:run_breakdown/event/add {code:"H",id:"11"}
function fossil_frights:hazard/lights/update_camera_computer
function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil_frights:hazards.lights master @s ~ ~ ~ 1 1
scoreboard players set #lights_start_phase ff_hazard_rng 0
scoreboard players set #lights_stop_phase ff_hazard_rng 0

function fossil_frights:hazard/lights/start
function fossil_frights:advancements/checks/hazardous
