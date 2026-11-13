scoreboard players remove @a[scores={ff_febreeze_rod_fx=-2147483648..}] ff_febreeze_rod_fx 1
execute as @a[scores={ff_febreeze_rod_fx=0}] run function fossil_frights:items/febreeze_rod/fx/deactivate
execute as @a[scores={ff_febreeze_rod_fx=-40..},tag=ff_forced_spectate] at @s run particle entity_effect{color:0xFBFEF7FF} ~ ~1 ~
execute as @a[scores={ff_febreeze_rod_fx=-40..},tag=!ff_forced_spectate] at @s run particle entity_effect{color:0xFBFEF700} ~ ~1 ~
# execute as @a[scores={ff_febreeze_rod_fx=..-40}] run function fossil_frights:items/febreeze_rod/fx/stop

execute if entity @a[limit=1,scores={ff_febreeze_rod_fx=-2147483648..}] run schedule function fossil_frights:items/febreeze_rod/fx/tick 1t
