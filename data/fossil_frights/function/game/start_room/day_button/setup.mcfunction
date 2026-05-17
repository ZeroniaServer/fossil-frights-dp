kill @e[type=minecraft:text_display,tag=ff_day_button_label]
setblock 20 71 28 minecraft:warped_button[face=wall,facing=north,powered=false]
data remove entity @e[type=minecraft:item_display,tag=pressed_start_button,limit=1,sort=nearest] item
summon minecraft:text_display 20.5 72.1 28.97 {Tags:["ff_day_button_label"],text:"",billboard:"fixed",see_through:0b,Rotation:[180f,0f],background:1073741824,default_background:1b,shadow:1b,brightness:{sky:15,block:15}}
