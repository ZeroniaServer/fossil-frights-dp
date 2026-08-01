# The Curse control is an interaction entity, but all state changes still use
# the guarded manual start/stop path so cooldowns and eligibility are shared.
advancement revoke @s only fossil_frights:curse_hazard_click
function fossil_frights:hazard/curse/button_click
