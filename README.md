# Fossil Frights Datapack

## Player Commands

Start or queue for the museum:
```mcfunction
/trigger ff_cmd_start
```

Leave the museum or spectator mode:
```mcfunction
/trigger ff_cmd_leave
```

Spectate the active player:
```mcfunction
/trigger ff_cmd_spectate
```

Show your personal museum stats:
```mcfunction
/trigger ff_cmd_stats
```

Watch the tutorial:
```mcfunction
/trigger ff_cmd_tutorial
```

Open the gameplay info dialog:
```mcfunction
/trigger ff_cmd_info
```

Open the invite dialog to invite another online player:
```mcfunction
/trigger ff_cmd_invite
```



# Op commands

Open the admin menu:
```mcfunction
/function fossil_frights:command/admin/show
```

Clear all plushie trophies and remove all obtained tags:
```mcfunction
/function fossil_frights:tasks/final/plushies/clear
```

Reset the lobby games best-time display back to "No times yet":
```mcfunction
/function fossil_frights:parkour/reset
/function fossil_frights:temple_run/reset
/function fossil_frights:ant_fight/reset
```

 Important: If using the Fossil Frights plugin on a server, the datapack will delegate leaderboard handling to the plugin to properly store player stats in `leaderboard.yml`. Please use refer to the plugin and use `/admin leaderboard` rather then the commands below.  

Completely reset the fossil frights game leaderboard:
```mcfunction
/function fossil_frights:admin/reset_leaderboard
```

Reset a player's stats (including leaderboard) by exact name, whether they are online or offline:
```mcfunction
/function fossil_frights:admin/reset_player_stats_macro {name:"PlayerName"}
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

Select Task (while game is running on shift):
```mcfunction
/function fossil_frights:tasks/<difficult>/<task_name>selected
```

Control Hazards:
```mcfunction
/function fossil_frights:hazard/start/random
/function fossil_frights:hazard/start/<name>
/function fossil_frights:hazard/stop/<name>
/function fossil_frights:hazard/stop/all
```

Set time of shift manually. (0-6000):
```
/scoreboard players set $day_timer ff_day 0
```

Set key cooldown length in ticks. Default is `600` ticks = `30` seconds:
```mcfunction
/scoreboard players set $key ff_key_cd_cfg 600
```

Set the held item as the reward for the lock you are looking at:
```mcfunction
/function fossil_frights:lock/set_held
```

# Armour Stands

Give yourself a leaderboard anchor armor stand:
```mcfunction
/give @p minecraft:armor_stand[minecraft:item_name='Leaderboard Anchor',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["leader_board"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]
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
