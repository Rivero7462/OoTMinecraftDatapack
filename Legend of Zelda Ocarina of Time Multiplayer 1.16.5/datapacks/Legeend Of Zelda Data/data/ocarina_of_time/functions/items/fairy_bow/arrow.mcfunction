execute unless block ~ ~ ~ minecraft:water run data merge entity @s {NoGravity:1b,Color:-1,pickup:0b}
execute if block ~ ~ ~ minecraft:water run data merge entity @s {NoGravity:0b,Color:-1,pickup:0b}

#Fire Arrows
execute if block ~ ~ ~ minecraft:torch if block ~ ~-1 ~ minecraft:jungle_fence run tag @s add Fire
execute if block ~ ~-1 ~ minecraft:torch if block ~ ~-2 ~ minecraft:jungle_fence run tag @s add Fire
execute if entity @s[tag=Fire] run data merge entity @s {Fire:10000s}

#Torch
execute if entity @s[tag=Fire] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:jungle_fence as @e[type=armor_stand,tag=UnlitTorch,limit=1,sort=nearest,distance=..1] run tag @s add LitTorch
execute if entity @s[tag=Fire] positioned ~ ~-2 ~ if block ~ ~ ~ minecraft:jungle_fence as @e[type=armor_stand,tag=UnlitTorch,limit=1,sort=nearest,distance=..1] run tag @s add LitTorch

#Bomb
execute positioned ~ ~ ~-.1 if block ~ ~ ~ minecraft:tnt run tag @s add Bomb
execute positioned ~ ~-.1 ~ if block ~ ~ ~ minecraft:tnt run tag @s add Bomb
execute positioned ~ ~.1 ~ if block ~ ~ ~ minecraft:tnt run tag @s add Bomb
execute positioned ~ ~ ~.1 if block ~ ~ ~ minecraft:tnt run tag @s add Bomb 
execute positioned ~.1 ~ ~ if block ~ ~ ~ minecraft:tnt run tag @s add Bomb 
execute positioned ~-.1 ~ ~ if block ~ ~ ~ minecraft:tnt run tag @s add Bomb 
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},distance=..1] run tag @s add Bomb
execute if entity @s[tag=Bomb] run scoreboard players add @s timer 1
execute if entity @s[tag=Bomb] run fill ~-.1 ~-.1 ~-.1 ~.2 ~.2 ~.2 minecraft:air replace minecraft:tnt
execute if entity @s[tag=Bomb] run kill @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}}]
execute if entity @s[tag=Bomb] run summon minecraft:item ~ ~ ~ {Tags:["BombArrow"],Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:0}
execute if entity @s[tag=Bomb] run scoreboard players set @e[type=item,tag=BombArrow] timer 101
execute if entity @s[tag=Bomb,scores={timer=2..}] run kill @s

execute if entity @e[nbt={Invulnerable:1b},distance=..2] run kill @s

#Kill
execute unless entity @a[distance=..80] run kill @s
execute if entity @s[nbt={life:50s}] run kill @s
execute if entity @s[nbt={life:0s}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=100..}] run kill @s

#Rebound
execute if entity @s[scores={lifetime=2}] store result score @s timer run data get entity @s Rotation[0]
execute if entity @s[scores={lifetime=3..}] store result score @s GameTimer run data get entity @s Rotation[0]
execute if entity @s[scores={lifetime=3..}] unless score @s timer = @s GameTimer run kill @s
