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
