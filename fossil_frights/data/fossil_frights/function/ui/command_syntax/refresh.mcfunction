data remove storage fossil_frights:ui commands
data remove storage fossil_frights:ui command_strings
data remove storage fossil_frights:ui messages
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.start set value {text:"/start"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.leave set value {text:"/leave"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.spectate set value {text:"/spectate"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.stats set value {text:"/stats"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.invite set value {text:"/invite"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.info set value {text:"/info"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.tutorial set value {text:"/tutorial"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.spawn set value {text:"/spawn"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.speedruntask set value {text:"/speedruntask <task>"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.mutechat set value {text:"/mutechat"}
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui command_strings.speedruntask set value "/speedruntask <task>"
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui command_strings.mutechat set value "/mutechat"
execute if predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui messages.speedruntask_usage set value {translate:"ff.command.speedruntask.plugin_usage",color:"red"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.start set value {text:"/trigger start"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.leave set value {text:"/trigger leave"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.spectate set value {text:"/trigger spectate"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.stats set value {text:"/trigger stats"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.invite set value {text:"/trigger invite"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.info set value {text:"/trigger info"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.tutorial set value {text:"/trigger tutorial"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.spawn set value {text:"/trigger spawn"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui command_strings.speedruntask set value "/trigger speedruntask set <#>"
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui commands.speedruntask set value {text:"/trigger speedruntask set <#>"}
execute unless predicate fossil_frights:world/packs_enabled/plugin run data modify storage fossil_frights:ui messages.speedruntask_usage set value {translate:"ff.command.speedruntask.trigger_usage",color:"red"}
