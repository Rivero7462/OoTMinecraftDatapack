#Enemies
function ocarina_of_time:moving_things/ganon_tower/enemies/loop

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/ganon_tower/pots

#Fire Ring
execute unless block -489 48 1613 minecraft:gold_block run fill -501 46 1617 -499 46 1615 minecraft:fire replace minecraft:air
execute if block -489 48 1613 minecraft:gold_block run fill -501 46 1617 -499 46 1615 minecraft:air replace minecraft:fire
execute if block -489 48 1613 minecraft:gold_block run fill -501 47 1617 -499 47 1615 minecraft:air replace minecraft:barrier

#Boss Door
execute if entity @a[x=-501,y=61,z=1628,dx=4,dz=2] if entity @a[nbt={Inventory:[{tag:{GanonBossKey:1b}}]}] run fill -499 60 1625 -499 60 1625 minecraft:gold_block
execute if entity @a[x=-501,y=61,z=1628,dx=4,dz=2] if entity @a[nbt={Inventory:[{tag:{GanonBossKey:1b}}]}] run fill -499 61 1627 -499 61 1627 minecraft:magenta_glazed_terracotta[facing=south]
execute if entity @a[x=-501,y=61,z=1628,dx=4,dz=2] if entity @a[nbt={Inventory:[{tag:{GanonBossKey:1b}}]}] run clear @a minecraft:shears{GanonBossKey:1b}
execute if entity @a[x=-500,y=61,z=1628,dx=2,dz=0] if block -499 60 1625 minecraft:gold_block run tp @a -498.0 73 1627

#Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/ganon_tower/boss/loop
