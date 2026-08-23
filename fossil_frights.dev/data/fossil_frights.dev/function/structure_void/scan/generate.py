from random import shuffle
from math import floor
from math import ceil

def squared_distance(x,y,z) -> float:
    return (x*x) + (y*y) + (z*z)

blocks: list[tuple[float,float,float]] = []

for x in range (-10,10+1):
    for y in range (-10,10+1):
        for z in range (-10,10+1):
            if squared_distance(x,y,z) > 10**2:
                continue
            blocks.append((x,y,z))

shuffle(blocks)

target_section_size: float = len(blocks)/80
sections: list[list[tuple[float,float,float]]] = []
this_section_size: float = 0.0
while len(blocks) > 0:
    sections.append([])
    this_section_size += target_section_size
    for _ in range(floor(this_section_size)):
        sections[-1].append(blocks.pop(-1))
        this_section_size -= 0.9999
        if len(blocks) == 0:
            break

print(len(sections))

for tick, section in enumerate(sections):
    with open(f"{tick}.mcfunction","w") as file:
        for x, y, z in section:
            file.write(f'execute positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:structure_void align xyz run particle minecraft:block_marker{{block_state:"minecraft:structure_void"}} ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @s\n')
