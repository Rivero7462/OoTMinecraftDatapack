scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..100}] run tp @s ~ ~-.02 ~
execute if entity @s[scores={timer=50}] run scoreboard players add @e[type=horse,tag=PhantomHorse] timer 1

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=11}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=21}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=31}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=41}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=51}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=61}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=71}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=81}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=91}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1
execute if entity @s[scores={timer=101}] run playsound minecraft:entity.horse.gallop hostile @a ~ ~ ~ .2 1

#Prepare
execute if entity @s[scores={timer=94}] if entity @s[x=906.7,y=28,z=-1200,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 910 22 -1198 120 ~
execute if entity @s[scores={timer=94}] if entity @s[x=906.7,y=28,z=-1210,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 910 22 -1212 60 ~
execute if entity @s[scores={timer=94}] if entity @s[x=898,y=28,z=-1214.6,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 898 22 -1219 0 ~
execute if entity @s[scores={timer=94}] if entity @s[x=890.3,y=28,z=-1210,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 886 22 -1212 -60 ~
execute if entity @s[scores={timer=94}] if entity @s[x=890.3,y=28,z=-1200,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 886 22 -1198 -120 ~
execute if entity @s[scores={timer=94}] if entity @s[x=898,y=28,z=-1194.4,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 898 22 -1192 180 ~

execute if entity @s[scores={timer=97}] if entity @s[x=906.7,y=28,z=-1200,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 910 28 -1198 120 ~
execute if entity @s[scores={timer=97}] if entity @s[x=906.7,y=28,z=-1200,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option1
execute if entity @s[scores={timer=97}] if entity @s[x=906.7,y=28,z=-1210,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 910 28 -1212 60 ~
execute if entity @s[scores={timer=97}] if entity @s[x=906.7,y=28,z=-1210,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option2
execute if entity @s[scores={timer=97}] if entity @s[x=898,y=28,z=-1214.6,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 898 28 -1219 0 ~
execute if entity @s[scores={timer=97}] if entity @s[x=898,y=28,z=-1214.6,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option3
execute if entity @s[scores={timer=97}] if entity @s[x=890.3,y=28,z=-1210,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 886 28 -1212 -60 ~
execute if entity @s[scores={timer=97}] if entity @s[x=890.3,y=28,z=-1210,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option4
execute if entity @s[scores={timer=97}] if entity @s[x=890.3,y=28,z=-1200,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 886 28 -1198 -120 ~
execute if entity @s[scores={timer=97}] if entity @s[x=890.3,y=28,z=-1200,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option5
execute if entity @s[scores={timer=97}] if entity @s[x=898,y=28,z=-1194.4,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] 898 28 -1192 180 ~
execute if entity @s[scores={timer=97}] if entity @s[x=898,y=28,z=-1194.4,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option6

#Summon
execute if entity @s[scores={timer=101}] if entity @s[x=906.7,y=28,z=-1200,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] ~ ~1.5 ~ 120 ~
execute if entity @s[scores={timer=101}] if entity @s[x=906.7,y=28,z=-1200,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option1
execute if entity @s[scores={timer=101}] if entity @s[x=906.7,y=28,z=-1210,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] ~ ~1.5 ~ 60 ~
execute if entity @s[scores={timer=101}] if entity @s[x=906.7,y=28,z=-1210,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option2
execute if entity @s[scores={timer=101}] if entity @s[x=898,y=28,z=-1214.6,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] ~ ~1.5 ~ 0 ~
execute if entity @s[scores={timer=101}] if entity @s[x=898,y=28,z=-1214.6,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option3
execute if entity @s[scores={timer=101}] if entity @s[x=890.3,y=28,z=-1210,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] ~ ~1.5 ~ -60 ~
execute if entity @s[scores={timer=101}] if entity @s[x=890.3,y=28,z=-1210,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option4
execute if entity @s[scores={timer=101}] if entity @s[x=890.3,y=28,z=-1200,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] ~ ~1.5 ~ -120 ~
execute if entity @s[scores={timer=101}] if entity @s[x=890.3,y=28,z=-1200,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option5
execute if entity @s[scores={timer=101}] if entity @s[x=898,y=28,z=-1194.4,dx=0,dz=0,distance=..1] run tp @e[type=horse,tag=PhantomHorse] ~ ~1.5 ~ 180 ~
execute if entity @s[scores={timer=101}] if entity @s[x=898,y=28,z=-1194.4,dx=0,dz=0,distance=..1] run tag @e[type=horse,tag=PhantomHorse] add Option6

execute if entity @s[scores={timer=101}] run kill @s
