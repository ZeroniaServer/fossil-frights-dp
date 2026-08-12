scoreboard players enable @a ff_lootbook
execute as @a[tag=ff_lootbook_restore_pending] run function fossil_frights:items/heists/lootbook/restore_item
execute as @a[scores={ff_lootbook=1}] run function fossil_frights:items/heists/lootbook/show_round
execute as @a[scores={ff_lootbook=2}] run function fossil_frights:items/heists/lootbook/show_all
scoreboard players set @a[scores={ff_lootbook=1..}] ff_lootbook 0
