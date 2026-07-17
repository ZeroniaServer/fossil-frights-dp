function fossil_frights:animations/dinocoin/vending_machine/runtime/on_load
function fossil_frights:animations/dinocoin/vending_machine/rig/on_load
schedule clear fossil_frights:animations/dinocoin/vending_machine/finish
scoreboard players set $vending_busy ff_game_state 0
scoreboard players set $vending_current ff_game_state 0
function fossil_frights:animations/dinocoin/vending_machine/rig/remove/all
kill @e[type=minecraft:interaction,tag=ff_vending_machine_drink]
summon minecraft:interaction 26.5 81.0 16.5 {Tags:["ff_vending_machine_drink"],width:1,height:1,response:true}
execute positioned 27.0 80.0 16.5 rotated 180 0 run function fossil_frights:animations/dinocoin/vending_machine/rig/summon {args:{}}
execute positioned 27.0 80.0 16.5 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,distance=..4,sort=nearest,limit=1] run function fossil_frights:animations/dinocoin/vending_machine/rig/apply_default_pose
function fossil_frights:animations/dinocoin/vending_machine/select
