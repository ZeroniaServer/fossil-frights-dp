execute unless entity @s[nbt={RootVehicle:{Entity:{Tags:["ff_hoverboard"]}}}] run return 0
tag @s add ff_hoverboard_owner_current
execute as @e[type=minecraft:happy_ghast,tag=ff_hoverboard] if score @s ff_hoverboard_uuid_0 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_0 if score @s ff_hoverboard_uuid_1 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_1 if score @s ff_hoverboard_uuid_2 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_2 if score @s ff_hoverboard_uuid_3 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_3 run tag @s add ff_hoverboard_keep
tag @s remove ff_hoverboard_owner_current
