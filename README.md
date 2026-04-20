# Fossil Frights Datapack

## Player Commands

Player-safe commands are exposed through trigger objectives so non-opped players can use them.

Start or queue for the museum:
```mcfunction
/start
/join
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

Show your personal museum stats:
```mcfunction
/stats
/trigger ff_cmd_stats set 1
```

Watch the tutorial:
```mcfunction
/tutorial
/trigger ff_cmd_tutorial set 1
```

Open the gameplay info dialog:
```mcfunction
/info
/trigger ff_cmd_info set 1
```

Open the invite dialog to invite another online player:
```mcfunction
/invite
/trigger ff_cmd_invite set 1
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

Reset the parkour best-time display back to "No times yet":
```mcfunction
/function fossil_frights:parkour/reset
```

Reset the Temple Run best-time display back to "No times yet":
```mcfunction
/function fossil_frights:temple_run/reset
```

Reset the Ant Fight best-score display back to "No scores yet":
```mcfunction
/function fossil_frights:ant_fight/reset
```

Hard reset the main leaderboard, including offline scoreboard holders and every stored leaderboard entry:
```mcfunction
/function fossil_frights:admin/reset_leaderboard
```

Reset one player's stats by exact name, whether they are online or offline. This also removes them from the leaderboard:
```mcfunction
/function fossil_frights:admin/reset_player_stats_macro {name:"PlayerName"}
```

Export the current storage-backed leaderboard data directly in chat:
```mcfunction
/function fossil_frights:admin/export_leaderboard
```

Set an online player's saved stats manually:
```mcfunction
/scoreboard players set <player> ff_top_time <value>
/scoreboard players set <player> ff_top_day <value>
/scoreboard players set <player> ff_run_count <value>
/scoreboard players set <player> ff_duo_best <value>
/scoreboard players set <player> ff_parkour_best <value>
/scoreboard players set <player> ff_temple_run_best <value>
/scoreboard players set <player> ff_ant_score <value>
/scoreboard players set <player> ff_ant_top_score <value>

```

## Developer Commands

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

Lock the nearest item frame by making it invulnerable, fixed, and invisible. Also applies a 0.5-second glow:
```mcfunction
/function itemframe:lock
```

Unlock the nearest item frame by clearing invulnerable, fixed, and invisible. Also applies a 0.5-second glow:
```mcfunction
/function itemframe:unlock
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

Give yourself a leaderboard anchor armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Leaderboard Anchor',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["leader_board"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
```


Set time of shift manually 0-6000
```
/scoreboard players set $day_timer ff_day 0
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

Give yourself a bogged fright armor stand marker:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Bogged Fright Marker',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_fright_bogged"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
```

Give yourself a placeable velociraptor skull prop armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Velociraptor Skull Prop',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_velociraptor_skull"],NoGravity:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Rotation:[0f,0f],equipment:{head:{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:item_name":{text:"Velociraptor Skull",italic:false},"minecraft:lore":[{text:"",extra:["velociraptor_skull"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}}}}]
```

Give yourself an anvil station armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Anvil Station',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["anvil"],NoGravity:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b}]
```
