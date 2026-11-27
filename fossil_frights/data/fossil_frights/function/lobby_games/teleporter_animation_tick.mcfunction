$execute if score #ff_$(game) ff_tp_anim matches 1..20 unless entity @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/$(game)] unless entity @a[tag=ff_fade_tp_active,scores={ff_tp_action=$(action)}] run scoreboard players set #ff_$(game) ff_tp_anim 100
$execute if score #ff_$(game) ff_tp_anim matches 100 run data merge entity @e[type=item_display,tag=ff_$(game)_tp,limit=1] {interpolation_duration:8,start_interpolation:0,transformation:{translation:[0f,-2f,0f],scale:[0.75f,0.75f,0.75f]}}
$execute if score #ff_$(game) ff_tp_anim matches 109.. run data merge entity @e[type=item_display,tag=ff_$(game)_tp,limit=1] {view_range:0f}
$execute if score #ff_$(game) ff_tp_anim matches 109.. run scoreboard players set #ff_$(game) ff_tp_anim 0
$execute if score #ff_$(game) ff_tp_anim matches 100..108 run scoreboard players add #ff_$(game) ff_tp_anim 1
$execute if score #ff_$(game) ff_tp_anim matches 1 run data merge entity @e[type=item_display,tag=ff_$(game)_tp,limit=1] {interpolation_duration:0,start_interpolation:0,view_range:0f,transformation:{translation:[0f,-2f,0f],scale:[0.75f,0.75f,0.75f]}}
$execute if score #ff_$(game) ff_tp_anim matches 2 run data merge entity @e[type=item_display,tag=ff_$(game)_tp,limit=1] {interpolation_duration:13,start_interpolation:0,view_range:1f,transformation:{translation:[0f,0f,0f],scale:[0.99f,0.99f,0.99f]}}
$execute if score #ff_$(game) ff_tp_anim matches 21 run data merge entity @e[type=item_display,tag=ff_$(game)_tp,limit=1] {interpolation_duration:4,start_interpolation:0,transformation:{scale:[0f,0.8f,0f]}}
$execute if score #ff_$(game) ff_tp_anim matches 21 at @e[type=item_display,tag=ff_$(game)_tp,limit=1] run particle minecraft:dust{color:[1.0,0.5,0.5],scale:0.5} ~ ~ ~ 0.2 0.5 0.2 0 60
$execute if score #ff_$(game) ff_tp_anim matches 26 run data merge entity @e[type=item_display,tag=ff_$(game)_tp,limit=1] {interpolation_duration:0,start_interpolation:0,view_range:0f,transformation:{translation:[0f,-2f,0f],scale:[0.75f,0.75f,0.75f]}}
$execute if score #ff_$(game) ff_tp_anim matches 26 run scoreboard players set #ff_$(game) ff_tp_anim 0
$execute if score #ff_$(game) ff_tp_anim matches 1..25 run scoreboard players add #ff_$(game) ff_tp_anim 1
