execute if entity @s[tag=Off] run fill 3003 144 1954 3007 144 1954 minecraft:fire replace minecraft:air
execute if entity @s[tag=Off] run fill 3004 144 1955 3006 144 1955 minecraft:fire
execute if entity @s[tag=Off] run fill 3003 145 1954 3007 145 1954 minecraft:barrier replace minecraft:air
execute if entity @s[tag=Off] run fill 3004 145 1955 3006 145 1955 minecraft:barrier
execute if entity @s[tag=Off] if entity @a[x=3004,y=146,z=1955,dx=2,dz=0] run effect give @a minecraft:wither 1 1 true
execute if entity @s[tag=Off] if entity @a[x=3004,y=146,z=1955,dx=2,dz=0] run tp @a 3005 144 1958

execute if entity @s[tag=On] run fill 3003 145 1954 3007 145 1955 minecraft:air replace minecraft:barrier
execute if entity @s[tag=On] run fill 3003 144 1954 3007 144 1955 minecraft:air replace minecraft:fire

execute if entity @s[scores={timer=120}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=130..}] run tag @s add Off
