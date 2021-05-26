fill 1770 58 2287 1770 58 2287 minecraft:air
scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 3
tp @e[type=armor_stand,tag=Ruto3] 1774.0 59 2287.0
scoreboard players set @e[type=armor_stand,tag=Zora2] text 3
scoreboard players set @e[type=armor_stand,tag=Zora8] text 2
scoreboard players set @e[type=armor_stand,tag=Zora3] text 3
scoreboard players set @e[type=armor_stand,tag=Zora4] text 2
scoreboard players set @e[type=armor_stand,tag=Zora5] text 3
scoreboard players set @e[type=armor_stand,tag=Zora1] text 2
fill 1773 54 2284 1773 54 2284 minecraft:gold_block
execute if block 1770 58 2287 minecraft:air if block 1773 54 2284 minecraft:gold_block if entity @e[type=armor_stand,tag=Zora1,scores={text=2}] if entity @e[type=armor_stand,tag=Zora2,scores={text=3}] run tag @a remove DomainChanges
