execute if entity @s[tag=debug] run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #fossil_frights:camera_thief_capture_raycast_ignore run return fail
execute unless entity @p[team=ff_thief,dx=0] positioned ^ ^ ^0.25 run return run function fossil_frights:items/heists/camera_remote/highlight_thief/tick
execute unless function fossil_frights:items/heists/camera_remote/highlight_thief/thief_visible run return fail

tag @s add ff_camera_thief_visible
scoreboard players set @s ff_actionbar_manager.slot.camera_thief_visible 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.camera_thief_visible fixed [{translate:"ff.security_camera.actionbar.thief_visible.exclamation",color:"yellow"}," ",{translate:"ff.security_camera.actionbar.thief_visible.prompt",color:"gray",with:[{keybind:"key.back",color:"white"}]}]
schedule function fossil_frights:player/actionbar/manager 1t append
execute if predicate fossil_frights:player/input/backward run function fossil_frights:items/heists/camera_remote/highlight_thief/capture
