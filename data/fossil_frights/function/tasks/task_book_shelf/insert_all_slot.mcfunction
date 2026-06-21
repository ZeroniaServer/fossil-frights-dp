scoreboard players remove #slots_empty ff_task_book_shelf 1
$item replace block 0 0 0 container.0 from entity @s $(slot)
$item replace entity @s $(slot) with air
execute unless items block 18 71 29 container.0 * run return run item replace block 18 71 29 container.0 from block 0 0 0 container.0
execute unless items block 18 71 29 container.1 * run return run item replace block 18 71 29 container.1 from block 0 0 0 container.0
execute unless items block 18 71 29 container.2 * run return run item replace block 18 71 29 container.2 from block 0 0 0 container.0
execute unless items block 18 71 29 container.3 * run return run item replace block 18 71 29 container.3 from block 0 0 0 container.0
execute unless items block 18 71 29 container.4 * run return run item replace block 18 71 29 container.4 from block 0 0 0 container.0
execute unless items block 18 71 29 container.5 * run return run item replace block 18 71 29 container.5 from block 0 0 0 container.0
