tag @s add ff_invite_caller
scoreboard players set $invite_found ff_gui 0
execute store result score $invite_uuid_0 ff_active_uuid_0 run data get storage fossil_frights:invite selected.uuid[0] 1
execute store result score $invite_uuid_1 ff_active_uuid_1 run data get storage fossil_frights:invite selected.uuid[1] 1
execute store result score $invite_uuid_2 ff_active_uuid_2 run data get storage fossil_frights:invite selected.uuid[2] 1
execute store result score $invite_uuid_3 ff_active_uuid_3 run data get storage fossil_frights:invite selected.uuid[3] 1
execute as @a[tag=!ff_invite_caller] if score @s ff_active_uuid_0 = $invite_uuid_0 ff_active_uuid_0 if score @s ff_active_uuid_1 = $invite_uuid_1 ff_active_uuid_1 if score @s ff_active_uuid_2 = $invite_uuid_2 ff_active_uuid_2 if score @s ff_active_uuid_3 = $invite_uuid_3 ff_active_uuid_3 run function fossil_frights:game/start_room/settings/multiplayer/gui/send_to_target
execute if score $invite_found ff_gui matches 0 run function fossil_frights:messages/multiplayer/player_no_longer_online
tag @s remove ff_invite_caller
