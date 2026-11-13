$posteffect add @a[predicate=fossil_frights:player/show_red_alert] fossil_frights:red_alert/$(period_offset)
$posteffect remove @a[predicate=!fossil_frights:player/show_red_alert] fossil_frights:red_alert/$(period_offset)
execute as @a[predicate=fossil_frights:player/show_red_alert,tag=ff_forced_spectate] run function fossil_frights:cameras/reapply_posteffect
execute as @a[predicate=fossil_frights:player/show_red_alert,tag=ff_camera_posteffect] run function fossil_frights:cameras/reapply_posteffect