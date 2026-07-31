execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~-1 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_jump positioned ~ ~-1 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  positioned ~ ~3 ~ unless predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-3 ~ \
  run return run tp @s ~ ~1 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~-1 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_jump positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  positioned ~ ~3 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-3 ~ \
  run return run tp @s ~ ~1 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_jump positioned ~ ~-1 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  positioned ~ ~3 ~ unless predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-3 ~ \
  run return run tp @s ~ ~1 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_jump positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  positioned ~ ~3 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-3 ~ \
  run return run tp @s ~ ~1 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~0 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ unless predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  run return run tp @s ~ ~0 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~0 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_no_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  run return run tp @s ~ ~0 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~-1 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~1 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ unless predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  run return run tp @s ~ ~0 ~

execute if score #ceiling ff_dummy matches 0 \
  positioned ~ ~-1 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~1 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_no_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  positioned ~ ~2 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-2 ~ \
  run return run tp @s ~ ~0 ~

execute if score #ceiling ff_dummy matches 1 \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~0 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  run return run tp @s ~ ~0 ~

execute if score #ceiling ff_dummy matches 1 \
  positioned ~ ~-1 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~1 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  run return run tp @s ~ ~0 ~

execute if score #ceiling ff_dummy matches 1 \
  positioned ~ ~-1 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~1 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/can_roam_into_from_side_with_ceiling positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  run return run tp @s ~ ~0 ~

execute if score #can_go_down ff_dummy matches 1 \
  positioned ~ ~-1 ~ if predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~1 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  run return run tp @s ~ ~-1 ~

execute if score #can_go_down ff_dummy matches 1 \
  positioned ~ ~-2 ~ if predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~2 ~ \
  positioned ~ ~-1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~1 ~ \
  positioned ~ ~0 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~0 ~ \
  positioned ~ ~1 ~ if predicate fossil_frights:block/chorus_cola/has_no_collision positioned ~ ~-1 ~ \
  run return run tp @s ~ ~-1 ~
