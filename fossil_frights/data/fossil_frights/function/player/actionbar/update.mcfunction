INSTANT:
- interact (task_complete, look_at_locator_bar, museum_map_already_claimed, requires_dinocoins, holy_grail_wrong_pot, star_gazing_no_constellation)
- loot_securing (already_secured, already_being_secured, secured_too_recently)
- trap_placer (no_trap_to_pick_up, picked_up, too_close, too_many_in_basement, invalid_block)
- key (unlocking, unlocked, polished)
- scissors_unsafe_to_run

- important_broadcast

- camera_navigation
- camera_thief_visible
- hovered_entity_info (settings_board)
- held_item_info (trap_placer)
- key_cooldown
- invisipunch_cooldown
- ladybug_timer
- task_info.a_c_reset
- task_info.evolution

- lobby_game (ant_fight, parkour)

GLOBAL:
- guard_coin_reported (global)
- guard_player_spotted (global)
- broadcast (day_complete, custom_day_complete)


function fossil_frights:player/actionbar/show/private/generic/task_complete
    scoreboard players set @s ff_actionbar_manager.slot.generic 30
    scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed ...
    schedule function fossil_frights:player/actionbar/manager 1t append
