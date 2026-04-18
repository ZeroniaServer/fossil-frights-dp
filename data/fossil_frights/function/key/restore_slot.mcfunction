$item replace entity @s $(slot) with minecraft:carrot_on_a_stick[minecraft:item_name={text:'Storage Key',color:'yellow'},minecraft:lore=[{text:'',extra:['key']}],minecraft:tooltip_display={hidden_components:['minecraft:lore']},minecraft:use_cooldown={seconds:$(seconds),cooldown_group:'fossil_frights:storage_key'},minecraft:custom_data={ff_key:1b}] 1
tag @s add ff_key_restore_done
