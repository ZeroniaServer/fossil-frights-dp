# Fossil Frights Datapack

## Server Commands

Give active key:
```mcfunction
/function fossil_frights:key/give
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
