scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother2] text 4
scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother3] text 4
scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother7] text 3
scoreboard players set @e[type=armor_stand,tag=Fado] text 4
scoreboard players set @e[type=armor_stand,tag=Twin1] text 4
scoreboard players set @e[type=armor_stand,tag=Twin2] text 4
scoreboard players set @e[type=armor_stand,tag=Twin3] text 3
scoreboard players set @e[type=armor_stand,tag=FakeTwin3] text 3
scoreboard players set @e[type=armor_stand,tag=Mido] text 4
scoreboard players set @e[type=armor_stand,tag=Twin5] text 2
scoreboard players set @e[type=armor_stand,tag=Twin4] text 2
tp @e[type=armor_stand,tag=Saria] -559 50 -611
tp @e[type=armor_stand,tag=Saria2] -569 83.3 -821.1
fill -574 69 -685 -574 69 -685 minecraft:redstone_block
fill -577 75 -690 -575 78 -690 minecraft:air
execute unless entity @a[tag=LostWoodsOwl] unless entity @a[tag=LearnSariaOcarina] run tag @a add LostWoodsOwl
execute if entity @e[type=armor_stand,tag=Saria2,x=-570,y=83,z=-822,dx=2,dy=1,dz=1] if block -576 76 -690 minecraft:air run tag @a remove NewForestText
