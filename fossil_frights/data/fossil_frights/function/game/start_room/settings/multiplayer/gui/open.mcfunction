data modify storage fossil_frights:invite actions set value []
data modify storage fossil_frights:invite entries set value []
scoreboard players set $invite_idx ff_gui 0
tag @s add ff_invite_self
execute as @a[tag=!ff_invite_self] run function fossil_frights:game/start_room/settings/multiplayer/gui/add_entry
tag @s remove ff_invite_self
execute unless data storage fossil_frights:invite entries[0] run function fossil_frights:messages/multiplayer/no_players_online
execute unless data storage fossil_frights:invite entries[0] run return 0
scoreboard players enable @s ff_invite_sel
function fossil_frights:game/start_room/settings/multiplayer/gui/show with storage fossil_frights:invite
