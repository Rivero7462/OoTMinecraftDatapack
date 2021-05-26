scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..100}] run tp @s ~ ~.02 ~
execute if entity @s[scores={timer=101}] run kill @s

execute if entity @s[scores={timer=60}] if entity @e[type=horse,tag=PhantomHorse,x=898,y=22,z=-1205,dx=0,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 .5

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=11}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=21}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=31}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=41}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=51}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=61}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=71}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=81}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=91}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
execute if entity @s[scores={timer=101}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .1 1
