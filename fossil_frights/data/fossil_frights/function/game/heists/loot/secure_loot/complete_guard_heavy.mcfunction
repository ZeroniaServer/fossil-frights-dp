tag @s add ff_heist_loot_secured
tag @s remove ff_heist_loot_security_active
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] at @s run playsound fossil-frights:heists.loot_secured player @s ~ ~ ~ 0.9 1
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run title @s times 0 10 0
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run title @s subtitle {"text":"","font":"fossil-frights:actionbar/loot_lock","italic":false}
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run title @s title {"text":" "}
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_recent 30
execute as @p[tag=ff_heist_loot_security_active,distance=..6,limit=1] run tag @s remove ff_heist_loot_security_active
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_ticks 0
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_hold 0
execute as @p[distance=..6,limit=1] run scoreboard players set @s ff_heist_loot_security_phase 0
