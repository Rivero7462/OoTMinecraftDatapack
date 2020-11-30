execute if entity @s[tag=Off] run fill -57 87 835 -56 87 836 minecraft:air replace minecraft:fire
execute if entity @s[tag=Off] run fill -57 88 835 -56 88 836 minecraft:air replace minecraft:barrier

execute if entity @s[tag=On] if entity @a[x=-57.33,y=87,z=834.77,dx=2,dz=0] run effect give @a minecraft:wither 1 1 true
execute if entity @s[tag=On] run fill -57 87 835 -56 87 836 minecraft:fire replace minecraft:air
execute if entity @s[tag=On] run fill -57 88 835 -56 88 836 minecraft:barrier replace minecraft:air

execute if entity @s[scores={timer=1}] run tag @e[type=zombie,tag=Anubis1] add Attack
execute if entity @s[scores={timer=140}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=150..}] run tag @s add Off
