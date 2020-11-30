execute if entity @s[tag=Off] run fill 3132 101 1954 3136 101 1954 minecraft:fire replace minecraft:air
execute if entity @s[tag=Off] run fill 3133 101 1955 3135 101 1955 minecraft:fire
execute if entity @s[tag=Off] run fill 3132 103 1954 3136 102 1954 minecraft:barrier replace minecraft:air
execute if entity @s[tag=Off] run fill 3135 103 1955 3133 102 1955 minecraft:barrier
execute if entity @s[tag=Off] if entity @a[x=3133,y=101,z=1955,dx=2,dy=3,dz=0] run effect give @a minecraft:wither 1 1 true
execute if entity @s[tag=Off] if entity @a[x=3133,y=101,z=1955,dx=2,dy=3,dz=0] run tp @a 3134 101 1958

execute if entity @s[tag=On] run fill 3132 103 1954 3136 101 1955 minecraft:air replace minecraft:barrier
execute if entity @s[tag=On] run fill 3132 101 1954 3136 101 1955 minecraft:air replace minecraft:fire

execute if entity @s[scores={timer=140}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=150..}] run tag @s add Off

