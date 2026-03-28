# Fossil Frights Datapack

## Player Commands

Player-safe commands are exposed through trigger objectives so non-opped players can use them.

Start or queue for the museum:
```mcfunction
/start
/trigger ff_cmd_start set 1
```

Leave the museum if you are the active player:
```mcfunction
/leave
/trigger ff_cmd_leave set 1
```

Spectate the active player:
```mcfunction
/spectate
/trigger ff_cmd_spectate set 1
```

Start the game when you are first in queue and receive the prompt:
```mcfunction
/trigger ff_queue_start set 1
```

# Op commands

Force-end the current game as an operator:
```mcfunction
/end
/function fossil_frights:game/end
```

Enable dev mode for yourself and switch to creative:
```mcfunction
/dev
```

Clear all plushie trophies and remove all obtained tags:
```mcfunction
/function fossil_frights:tasks/final/plushies/clear
```

## Server Commands

Give active key:
```mcfunction
/function fossil_frights:key/give
```

Give DNA microfiber cloth:
```mcfunction
/function fossil_frights:tasks/final/dna/give
```

Set the held item as the reward for the lock you are looking at:
```mcfunction
/function fossil_frights:lock/set_held
```

Set key cooldown length in ticks. Default is `600` ticks = `30` seconds:
```mcfunction
/scoreboard players set $key ff_key_cd_cfg 600
```

Start a specific hazard:
```mcfunction
/function fossil_frights:hazard/start/<name>
```

Start a random inactive hazard:
```mcfunction
/function fossil_frights:hazard/start/random
```

Stop a specific hazard:
```mcfunction
/function fossil_frights:hazard/stop/<name>
```

Stop all active hazards:
```mcfunction
/function fossil_frights:hazard/stop/all
```

Set yourself as the active player:
```mcfunction
/function fossil_frights:game/set_active_player
```

Start the game for the active player:
```mcfunction
/function fossil_frights:game/start
```

End the current game:
```mcfunction
/function fossil_frights:game/end
```


Enable dev mode for yourself:
```mcfunction
/team join ff_dev_mode @s
```

Give yourself a 3x3 security gate armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='3x3 Gate',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_gate_3x3"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]
```

Give yourself a 3x3 garage door armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Garage Door',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_garage_3x3"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]
```

Give yourself a 2x2 security gate armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='2x2 Gate',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_gate_2x2"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]
```

Give yourself a 5x6 security gate armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='5x6 Gate',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_gate_5x6"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]
```

Give yourself a sniffer fright armor stand marker:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Sniffer Fright Marker',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_fright","ff_fright_sniffer"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
```

Give yourself a bat fright armor stand marker:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Bat Fright Marker',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_fright","ff_fright_bats"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
```

Give yourself a creeper fright armor stand marker:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Creeper Fright Marker',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_fright_creeper"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
```

Give yourself a skeleton fright armor stand marker:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Skeleton Fright Marker',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_fright_skeleton"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
```

Give yourself a placeable velociraptor skull prop armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Velociraptor Skull Prop',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_velociraptor_skull"],NoGravity:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Rotation:[0f,0f],equipment:{head:{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:item_name":{text:"Velociraptor Skull",italic:false},"minecraft:lore":[{text:"",extra:["velociraptor_skull"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}}}}]
```

Give yourself an anvil station armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Anvil Station',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["anvil"],NoGravity:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b}]
```
