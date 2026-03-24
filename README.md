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

While the game is running:
- adventure players can walk into the yellow queue pad to join the queue
- joining the queue broadcasts `Player joined the queue`
- each queued player gets a mannequin at `0 79 -2` facing south, with later joins lined up behind
- stepping into the yellow pad again while already queued says `You are already in queue.`
- punching your mannequin removes you from the queue and closes the line up
- if a queued player logs off, their mannequin is removed and the line closes up automatically
- the gray spectate pad toggles spectator mode, and leaving spectator from that pad resets you to the world login state at `0 80 0`

Enable dev mode for yourself:
```mcfunction
/team join ff_dev_mode @s
```

Dev mode players keep their green name on login and bypass the normal login reset flow:
- no login teleport
- no inventory clear
- no forced adventure mode
- no normal team reset

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
