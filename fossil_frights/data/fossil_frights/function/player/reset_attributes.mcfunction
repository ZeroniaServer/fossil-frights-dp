attribute @s minecraft:movement_speed base reset
attribute @s minecraft:friction_modifier base reset
attribute @s minecraft:air_drag_modifier base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:scale base reset
attribute @s minecraft:waypoint_transmit_range base reset
attribute @s minecraft:waypoint_receive_range base reset
attribute @s minecraft:below_name_distance base reset
attribute @s minecraft:knockback_resistance base reset
attribute @s minecraft:safe_fall_distance base reset
function fossil_frights:player/reset_attribute_modifiers
function fossil_frights:items/heists/ice_cannon/remove_owned_display
function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @s remove ff_ice_frozen
tag @s remove ff_ice_frozen_overlay
tag @s remove ff_ice_freeze_owner
tag @s remove ff_ice_freeze_syncing
tag @s remove ff_ice_freeze_hurt_owner
tag @s remove ff_ice_freeze_orphan_source
tag @s remove ff_ice_freeze_cleanup_source
