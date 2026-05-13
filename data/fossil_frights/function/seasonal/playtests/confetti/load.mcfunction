kill @e[type=minecraft:wandering_trader,tag=ff_seasonal_confetti_staff]
kill @e[type=minecraft:interaction,tag=ff_seasonal_confetti_staff_click]
team add ff_seasonal_confetti_staff
team modify ff_seasonal_confetti_staff collisionRule never
summon minecraft:wandering_trader 10.00 75.00 -19.00 {Rotation:[90.0f,0.0f],NoAI:0b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoGravity:0b,Tags:["ff_seasonal_confetti_staff"],attributes:[{id:"minecraft:movement_speed",base:0.0},{id:"minecraft:knockback_resistance",base:1.0}],Offers:{Recipes:[]}}
item replace entity @e[type=minecraft:wandering_trader,tag=ff_seasonal_confetti_staff,limit=1,sort=nearest] armor.head with minecraft:carved_pumpkin[minecraft:item_name={text:"Confetti Cannon",color:"yellow",italic:false},minecraft:lore=[{text:"",extra:["confetti_cannon"]}],minecraft:enchantments={"minecraft:binding_curse":1},minecraft:tooltip_display={hidden_components:["minecraft:lore","minecraft:enchantments"]},minecraft:enchantment_glint_override=false,minecraft:custom_data={ff_confetti_cannon_hat:1b}] 1
team join ff_seasonal_confetti_staff @e[type=minecraft:wandering_trader,tag=ff_seasonal_confetti_staff]
summon minecraft:interaction 10.00 75.00 -19.00 {width:3.0f,height:3.0f,response:1b,Tags:["ff_seasonal_confetti_staff_click"]}
