#Bobber
execute unless entity @a[tag=SinkLure] run scoreboard players set @e[type=fishing_bobber] timer 1
execute if entity @a[tag=SinkLure] run scoreboard players set @e[type=fishing_bobber] timer 2

#Steal Hat
execute unless block 433 63 2722 minecraft:gold_block unless entity @a[tag=StealCap] if entity @e[type=fishing_bobber,nbt={Pos:[428.5d,66.56000003814697d,2714.7d]}] run function ocarina_of_time:moving_things/fishing_pond/steal_cap
#Got Hat
execute if entity @a[tag=StealCap] as @e[type=fishing_bobber] at @s unless entity @e[type=armor_stand,tag=FishingCap] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FishingCap"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:104}}],DisabledSlots:4144959}
execute unless entity @e[type=armor_stand,tag=FishingCap,tag=LostCap] if entity @a[tag=StealCap] unless entity @e[type=fishing_bobber] run kill @e[type=armor_stand,tag=FishingCap]
execute as @e[type=armor_stand,tag=FishingCap] at @e[type=fishing_bobber] unless entity @s[tag=LostCap] run tp @s ~ ~-1 ~

#Lose Hat
execute unless block 433 63 2722 minecraft:gold_block if entity @a[tag=StealCap] as @e[type=armor_stand,tag=FishingCap,x=387,y=64,z=2709,dx=20,dz=20] run function ocarina_of_time:moving_things/fishing_pond/pay_rupees

#Sink Hat
execute as @e[type=armor_stand,tag=FishingCap,tag=LostCap] at @s if block ~ ~-.1 ~ minecraft:water run tp @s ~ ~-.1 ~

#Sinking Lure
execute unless entity @a[tag=SinkLure] if block 411 57 2718 minecraft:gold_block at @e[type=area_effect_cloud,tag=SinkSpot] if entity @a[distance=..1] run tellraw @a ["",{"text":"Wow! Is this what I think it is? Astonishing! You snagged a "},{"text":"sinking lure","color":"red"},{"text":"!"}]
execute unless entity @a[tag=SinkLure] if block 411 57 2718 minecraft:gold_block at @e[type=area_effect_cloud,tag=SinkSpot] if entity @a[distance=..1] run tag @a add SinkLure
