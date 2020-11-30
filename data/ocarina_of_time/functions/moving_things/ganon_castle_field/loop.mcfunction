#Pillar
execute at @a if entity @a[tag=GoldenGauntlets,x=1473,y=71,z=484,dx=1,dz=4] if block ~ ~ ~1 minecraft:obsidian run tag @a add ThrowPillar1
execute at @a if entity @a[tag=GoldenGauntlets,x=1473,y=71,z=484,dx=1,dz=4] if block ~ ~ ~-1 minecraft:obsidian run tag @a add ThrowPillar1
execute at @a if entity @a[tag=GoldenGauntlets,x=1473,y=71,z=484,dx=1,dz=4] if block ~1 ~ ~ minecraft:obsidian run tag @a add ThrowPillar1
execute if entity @a[tag=ThrowPillar1] as @e[type=armor_stand,tag=Helmet2] run function ocarina_of_time:moving_things/ganon_castle_field/pillar_1

#Rocks
execute unless blocks 1444 72 489 1445 73 490 1445 72 496 all run fill 1444 72 489 1445 73 490 minecraft:air
execute unless blocks 1446 72 488 1447 73 489 1445 72 496 all run fill 1446 72 488 1447 73 489 minecraft:air
execute unless blocks 1460 70 485 1461 71 486 1445 72 496 all run fill 1460 70 485 1461 71 486 minecraft:air
