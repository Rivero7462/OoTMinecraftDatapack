fill 884 68 1413 884 68 1413 minecraft:gold_block

scoreboard players set @e[type=armor_stand,tag=RedTwin] text 3
scoreboard players set @e[type=armor_stand,tag=BlueTwin] text 3
scoreboard players set @e[type=armor_stand,tag=WonderingGirl] text 3
scoreboard players set @e[type=armor_stand,tag=Shikashi] text 3
scoreboard players set @e[type=armor_stand,tag=OldLady] text 3
scoreboard players set @e[type=armor_stand,tag=BuffGuy] text 3
scoreboard players set @e[type=armor_stand,tag=BeardGuy] text 2
scoreboard players set @e[type=armor_stand,tag=CastleTownLady] text 3

tp @e[type=armor_stand,tag=DogGuy] 851 64 1395 45 ~
tp @e[type=armor_stand,tag=Goron7] 906 62 1435

scoreboard players set @e[type=armor_stand,tag=GirlChasingCucco] text 2
scoreboard players set @e[type=armor_stand,tag=Sakon] text 2

tp @e[type=armor_stand,tag=DeadGuard] 853.8 69.3 1419

execute if entity @e[type=armor_stand,tag=DeadGuard,x=853,y=70,z=1419,dx=0,dz=0] if entity @e[type=armor_stand,tag=Goron7,x=906,y=62,z=1435,dx=0,dz=0] if block 884 68 1413 minecraft:gold_block run tag @a remove CastleTownText
