$posteffect add @a[predicate=fossil_frights:player/show_red_alert] fossil_frights:red_alert/$(period_offset)
$posteffect remove @a[predicate=!fossil_frights:player/show_red_alert] fossil_frights:red_alert/$(period_offset)
