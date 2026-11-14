execute positioned 0.75 81 30 unless entity @e[type=minecraft:item_display,tag=aj.santasaurus.root,distance=..0.1,limit=1] rotated 0 0 run function aj:santasaurus/summon {args:{}}
execute positioned 0.75 81 30 as @e[type=minecraft:item_display,tag=aj.santasaurus.root,tag=!aj.santasaurus.animation.ambient.playing,distance=..0.1,limit=1] at @s run function aj:santasaurus/animations/ambient/play
