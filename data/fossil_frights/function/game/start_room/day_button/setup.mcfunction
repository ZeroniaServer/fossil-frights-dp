kill @e[type=minecraft:text_display,tag=ff_day_button_label]
kill @e[type=minecraft:item_frame,tag=ff_day_button_pressed]
setblock 20 71 28 minecraft:warped_button[face=wall,facing=north,powered=false]
summon minecraft:text_display 20.5 72.1 28.97 {Tags:["ff_day_button_label"],text:"",billboard:"fixed",see_through:0b,Rotation:[180f,0f],background:1073741824,default_background:1b}
