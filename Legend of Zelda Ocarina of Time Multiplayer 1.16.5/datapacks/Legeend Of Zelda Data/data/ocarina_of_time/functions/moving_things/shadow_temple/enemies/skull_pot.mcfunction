execute unless entity @s[scores={timer=240..242}] run tp @s ^ ^ ^ ~-1.5 ~
execute if entity @s positioned 1518 61 906 run tp @s ^ ^ ^3.5
execute store result score @s BlueRupee if entity @e[type=armor_stand,tag=SkullPot]

#Reset Spin
scoreboard players add @s timer 1
execute if entity @s[scores={timer=240..242}] as @e[type=armor_stand,tag=SkullPot1] at @s run tp @s ~ ~ ~ 120 0
execute if entity @s[scores={timer=240..242}] as @e[type=armor_stand,tag=SkullPot2] at @s run tp @s ~ ~ ~ -120 0
execute if entity @s[scores={timer=240..242}] as @e[type=armor_stand,tag=SkullPot3] at @s run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={timer=243..}] run scoreboard players set @s timer 0

#Bomb
execute positioned ^ ^3 ^ if entity @e[type=armor_stand,tag=Bomb,distance=..1.5] run tag @s add Kill
execute positioned ^ ^3 ^ if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},distance=..1.5] run tag @s add Kill

execute positioned ^ ^3 ^ if entity @s[tag=Kill] if entity @e[type=armor_stand,tag=Bomb,distance=..1.5] run tag @a remove Holding
execute positioned ^ ^3 ^ if entity @s[tag=Kill] if entity @e[type=armor_stand,tag=Bomb,distance=..1.5] run scoreboard objectives remove HoldingBomb
execute positioned ^ ^3 ^ if entity @s[tag=Kill] if entity @e[type=armor_stand,tag=Bomb,distance=..1.5] run kill @e[type=armor_stand,tag=Bomb,distance=..1.5]
execute positioned ^ ^3 ^ if entity @s[tag=Kill] run kill @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},distance=..1.5]

execute if entity @s[tag=Kill] run particle minecraft:explosion ~ ~ ~ .2 1 .2 1 5 normal
execute if entity @s[tag=Kill] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ .5 1
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=3}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup10:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=3}] run fill 1509 54 904 1509 54 904 minecraft:gold_block
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=2}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=2}] run fill 1509 54 905 1509 54 905 minecraft:gold_block
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~2 ~ ~ {Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~-1 ~ ~1 {Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~-1 ~ ~-1 {Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~ ~ ~2 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~1 ~ ~-1 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~-2 ~ ~ {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~ ~ ~-2 {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run summon minecraft:item ~1 ~ ~1 {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run tag @a remove Holding
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run scoreboard objectives remove HoldingBomb
execute if entity @s[tag=Kill] if entity @s[scores={BlueRupee=1}] run fill 1509 54 906 1509 54 906 minecraft:gold_block

execute if entity @s[tag=Kill] run kill @s
