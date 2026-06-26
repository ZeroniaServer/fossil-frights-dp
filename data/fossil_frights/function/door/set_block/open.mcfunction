$execute at @s run setblock ~ ~ ~ $(block_type)[facing=$(block_facing),hinge=$(block_hinge),half=lower,open=true] strict
$execute at @s run setblock ~ ~1 ~ $(block_type)[facing=$(block_facing),hinge=$(block_hinge),half=upper,open=true] strict
