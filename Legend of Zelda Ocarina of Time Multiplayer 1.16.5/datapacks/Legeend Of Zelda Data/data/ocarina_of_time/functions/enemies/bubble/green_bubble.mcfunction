#Scores
execute unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute unless entity @s[tag=Stun] run scoreboard players add @s GameTimer 1

#Rotation
execute unless entity @s[tag=Special1] facing entity @a eyes rotated ~ 0 run tp @s ~ ~ ~ ~ 0

#Moving
#North and South
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=2..10}] run tp @s ~.05 ~.025 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=11..19}] run tp @s ~.025 ~.05 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=20..28}] run tp @s ~-.025 ~.05 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=29..37}] run tp @s ~-.05 ~.025 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=38..46}] run tp @s ~-.05 ~-.025 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=47..55}] run tp @s ~-.025 ~-.05 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=56..64}] run tp @s ~.025 ~-.05 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=65..72}] run tp @s ~.05 ~-.025 ~
execute unless entity @s[tag=Stun] if entity @s[tag=North,scores={lifetime=73..}] run scoreboard players set @s lifetime 0
#Diagonal
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=2..10}] run tp @s ~.1 ~.125 ~.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=11..19}] run tp @s ~.1 ~.15 ~.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=20..28}] run tp @s ~-.1 ~.15 ~-.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=29..37}] run tp @s ~-.1 ~.125 ~-.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=38..46}] run tp @s ~-.1 ~-.125 ~-.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=47..55}] run tp @s ~-.1 ~-.15 ~-.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=56..64}] run tp @s ~.1 ~-.15 ~.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=65..72}] run tp @s ~.1 ~-.125 ~.1
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=73..}] run tp @s -457 28 1931
execute unless entity @s[tag=Stun] if entity @s[tag=Diagonal,scores={lifetime=73..}] run scoreboard players set @s lifetime 0

#Shield
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1..140}] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1..140}] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1..140}] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run scoreboard players set @s timer 141
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1..140}] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run scoreboard players set @s timer 141

#Flame
execute unless entity @s[tag=Stun] unless entity @s[tag=Special1] if entity @s[scores={timer=1}] run data merge entity @s {NoAI:0b}
execute unless entity @s[tag=Stun] unless entity @s[tag=Special1] if entity @s[scores={timer=1..140}] run particle entity_effect ~ ~.2 ~ 0 1 .1 1 0 normal @a
execute unless entity @s[tag=Stun] unless entity @s[tag=Special1] if entity @s[scores={timer=141}] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute unless entity @s[tag=Stun] unless entity @s[tag=Special1] if entity @s[scores={timer=211..}] run scoreboard players set @s timer 0

#Arrow
execute unless entity @s[tag=Special1] if entity @s[scores={timer=1..140}] unless entity @e[type=arrow,distance=..5] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Special1] if entity @e[type=arrow,distance=..5] run data merge entity @s {Invulnerable:0b}

#Slingshot
execute unless entity @s[tag=Special1] if entity @e[type=snowball,distance=..2] unless entity @s[scores={timer=1..140}] run kill @s
execute unless entity @s[tag=Special1] if entity @e[type=snowball,distance=..2] if entity @s[tag=Stun] run kill @s

#Stun
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.6 ~ .1 .2 .1 1 1
execute if entity @s[scores={time=1..110}] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if entity @s[scores={time=111..}] run tag @s remove Stun
execute if entity @s[scores={time=111..}] run scoreboard players set @s time 0

#Sound
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run playsound minecraft:ui.toast.out hostile @a ~ ~ ~ 1 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=141}] run playsound minecraft:ui.toast.out hostile @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=Stun] if entity @s[scores={GameTimer=1}] run playsound minecraft:entity.bat.loop hostile @a ~ ~ ~ .1 .5
execute if entity @s[scores={GameTimer=60..}] run scoreboard players set @s GameTimer 0
