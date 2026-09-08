title @s actionbar {"translate":"ff.actionbar.heists.loot_security.already_secured","color":"red","italic":false}
execute at @s run playsound fossil-frights:heists.loot_secured player @s ~ ~ ~ 0.9 1
scoreboard players set @s ff_heist_loot_security_actionbar 20
