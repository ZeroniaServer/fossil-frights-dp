clear @s minecraft:echo_shard[minecraft:custom_data={ff_key:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data={ff_key_cooldown:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data={ff_key_disabled:1b}]
item replace entity @s weapon.mainhand with minecraft:echo_shard[minecraft:item_name={text:'Storage Key',color:'yellow',extra:[{text:' (Disabled)',color:'gray'}]},minecraft:lore=[{text:'',extra:['key_disabled']}],minecraft:tooltip_display={hidden_components:['minecraft:lore']},minecraft:custom_data={ff_key_disabled:1b}] 1
