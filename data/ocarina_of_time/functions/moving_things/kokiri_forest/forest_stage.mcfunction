#Mask
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] unless entity @s[tag=FinishPrize1] unless entity @s[tag=Prize1] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b,display:{Name:"\"Skull Mask\""}}}]}] run tag @s add Prize1
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] unless entity @s[tag=FinishPrize2] unless entity @s[tag=Prize2] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b,display:{Name:"\"Mask of Truth\""}}}]}] run tag @s add Prize2
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] unless entity @s[tag=FinishPrize2] unless entity @s[tag=Prize2] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b}}]}] run tag @s add Judge
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] if entity @s[tag=FinishPrize1] unless entity @s[tag=Prize1] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b}}]}] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b,display:{Name:"\"Skull Mask\""}}}]}] run tag @s add Judge
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] if entity @s[tag=FinishPrize2] unless entity @s[tag=Prize2] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b}}]}] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b,display:{Name:"\"Mask of Truth\""}}}]}] run tag @s add Judge

execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] if entity @s[tag=Prize1] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b}}]}] run tag @s add Judge
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless entity @s[tag=Wait] if entity @s[tag=Prize2] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{Mask:1b}}]}] run tag @s add Judge

#Judge
execute if entity @s[tag=Judge] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] as @e[type=zombie,tag=StageScrub] at @s facing entity @a feet rotated ~ 0 run tp @s ~ ~1 ~ ~ 0
execute if entity @s[scores={timer=1}] run fill -598 59 -696 -598 59 -696 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -599 59 -697 -599 59 -697 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -598 59 -698 -598 59 -698 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -597 59 -697 -597 59 -697 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a -598 58 -697

#Options
execute if entity @s[scores={timer=50}] run fill -597 59 -698 -599 59 -696 minecraft:air
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @s[scores={timer=51,lifetime=0}] as @e[type=zombie,tag=StageScrub] run tag @s add Attack
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @s[scores={timer=51,lifetime=1}] run function ocarina_of_time:music/shop
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @s[scores={timer=51,lifetime=1}] as @e[type=zombie,tag=StageScrub] run tag @s add Dance
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @s[scores={timer=51,lifetime=2}] run function ocarina_of_time:music/castle_courtyard
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @s[scores={timer=51,lifetime=2}] as @e[type=zombie,tag=StageScrub] run tag @s add Rupees
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] if entity @s[scores={timer=51,lifetime=3}] as @e[type=zombie,tag=StageScrub] run tag @s add Wrong

#Prizes
execute unless entity @s[tag=FinishPrize1] if entity @s[tag=Prize1] if entity @s[scores={timer=51}] run function ocarina_of_time:music/lost_woods
execute unless entity @s[tag=FinishPrize1] if entity @s[tag=Prize1] if entity @s[scores={timer=51}] as @e[type=zombie,tag=StageScrub] run tag @s add Cheer
execute unless entity @s[tag=FinishPrize2] if entity @s[tag=Prize2] if entity @s[scores={timer=51}] run tp @s ~ ~1 ~
execute unless entity @s[tag=FinishPrize2] if entity @s[tag=Prize2] if entity @s[scores={timer=51}] as @e[type=zombie,tag=StageScrub] run tag @s add Confused

#Finish
execute if entity @s[scores={timer=51..}] run tag @s add Wait
execute if entity @s[scores={timer=51..}] run tag @s remove Judge
execute if entity @s[scores={timer=51..}] run scoreboard players set @s timer 0

#Randomizer
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=4..}] run scoreboard players set @s lifetime 0
