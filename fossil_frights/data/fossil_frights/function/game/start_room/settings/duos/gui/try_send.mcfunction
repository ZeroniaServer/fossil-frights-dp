tag @s add ff_invite_caller
function fossil_frights:game/party/add_current_if_missing
scoreboard players set $invite_found ff_gui 0
execute store result score #match ff_active_uuid_0 run data get storage fossil_frights:invite selected.u0
execute store result score #match ff_active_uuid_1 run data get storage fossil_frights:invite selected.u1
execute store result score #match ff_active_uuid_2 run data get storage fossil_frights:invite selected.u2
execute store result score #match ff_active_uuid_3 run data get storage fossil_frights:invite selected.u3
execute as @a[limit=1,tag=!ff_invite_caller,predicate=fossil_frights:entity/match/active] run function fossil_frights:game/start_room/settings/duos/gui/send_to_target
execute if score $invite_found ff_gui matches 0 run function fossil_frights:messages/duos/player_no_longer_online
tag @s remove ff_invite_caller
