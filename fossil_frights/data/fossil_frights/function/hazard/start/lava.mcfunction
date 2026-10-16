execute if score lava ff_hazard_active matches 1 run return 0

scoreboard players set lava ff_hazard_active 1
scoreboard players set @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic 65
scoreboard players set @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @a[predicate=fossil_frights:player/team/guard] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hazard.prefix",color:"gray"},{translate:"ff.actionbar.hazard.floor_is_lava",color:"gold"}]
scoreboard players display numberformat @a[predicate=fossil_frights:player/team/thief] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hazard.prefix",color:"gray"},{translate:"ff.actionbar.hazard.floor_is_lava",color:"gold"}]
scoreboard players display numberformat @a[predicate=fossil_frights:player/team/spectator] ff_actionbar_manager.slot.generic fixed [{translate:"ff.actionbar.hazard.prefix",color:"gray"},{translate:"ff.actionbar.hazard.floor_is_lava",color:"gold"}]
schedule function fossil_frights:player/actionbar/manager 1t append
execute if score $a_c_reset_sel ff_task_state matches 1 unless score $a_c_reset_done ff_task_state matches 1 run function fossil_frights:tasks/hard/a_c_reset/place_melted
function fossil_frights:run_breakdown/event/add {code:"H",id:"21"}
function fossil_frights:hazard/lava/map/update
function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil_frights:hazards.lava master @s ~ ~ ~ 1 1
setblock -1 71 15 minecraft:magma_block

function fossil_frights:hazard/lava/start
function fossil_frights:advancements/checks/hazardous
