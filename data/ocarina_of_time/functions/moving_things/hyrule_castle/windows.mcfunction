execute unless block 835 88 394 minecraft:gold_block if entity @e[type=snowball,x=834,y=90,z=398,dx=2,dy=2,dz=1] run summon minecraft:item 835 92 399 {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute if entity @e[type=snowball,x=834,y=90,z=398,dx=2,dy=2,dz=1] run fill 835 88 394 835 88 394 minecraft:gold_block

execute unless block 835 88 426 minecraft:gold_block if entity @e[type=snowball,x=834,y=90,z=421,dx=2,dy=2,dz=1] run tag @e[type=armor_stand,tag=Guard27] add ThrowBomb
execute unless block 835 88 426 minecraft:gold_block if entity @e[type=armor_stand,tag=Guard27,tag=ThrowBomb] run scoreboard players add @e[type=armor_stand,tag=Guard27,tag=ThrowBomb] timer 1

execute if entity @e[type=armor_stand,tag=Guard27,tag=ThrowBomb,scores={timer=4}] as @e[type=armor_stand,tag=Guard15] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Hey, you! Don't cause any trouble!"}]
execute if entity @e[type=armor_stand,tag=Guard27,tag=ThrowBomb,scores={timer=4}] run tp @e[type=armor_stand,tag=Guard27] 836 89 423
execute if entity @e[type=armor_stand,tag=Guard27,tag=ThrowBomb,scores={timer=12}] run summon item 835 89 417 {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:1000}

execute if entity @e[type=armor_stand,tag=Guard27,tag=ThrowBomb,scores={timer=20}] run tp @e[type=armor_stand,tag=Guard27] 838 89 423
execute if entity @e[type=armor_stand,tag=Guard27,tag=ThrowBomb,scores={timer=21..}] run tag @e[type=armor_stand,tag=Guard27] remove ThrowBomb
execute if entity @e[type=armor_stand,tag=Guard27,scores={timer=21..}] run fill 835 88 426 835 88 426 minecraft:gold_block
execute if entity @e[type=armor_stand,tag=Guard27,scores={timer=21..}] run scoreboard players set @e[type=armor_stand,tag=Guard27] timer 0
