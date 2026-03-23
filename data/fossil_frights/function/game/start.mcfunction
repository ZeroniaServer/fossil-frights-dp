execute unless entity @a[tag=ff_active] run tellraw @a {"text":"No active player is set. Run /function fossil_frights:game/set_active_player as the player who should start the game.","color":"red"}
execute unless entity @a[tag=ff_active] run return 0

function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:bossbar/setup
function fossil_frights:join/setup
function fossil_frights:animations/door/close
tp @a[tag=ff_active] 20 70 20 0 0
spawnpoint @a[tag=ff_active] 20 70 20
gamemode adventure @a[tag=ff_active]
clear @a[tag=ff_active]
item replace entity @a[tag=ff_active] armor.head with minecraft:carved_pumpkin[minecraft:item_name={text:'Security Hat',italic:false},minecraft:lore=[{text:'',extra:['security_guard_hat']}],minecraft:tooltip_display={hidden_components:['minecraft:lore']}] 1
scoreboard players set $game_running ff_game_state 1
