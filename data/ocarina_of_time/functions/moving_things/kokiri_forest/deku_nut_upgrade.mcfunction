execute if entity @s[tag=NutUpgrade1] run tag @s add NutUpgrade2
execute if entity @s[tag=NutUpgrade2] run advancement grant @a only minecraft:_upgrades/nut_upgrade_2
execute if entity @s[tag=NutUpgrade2] run tellraw @a ["",{"text":"You can now can carry even more "},{"text":"Deku Nuts","color":"red"},{"text":"! You can carry up to "},{"text":"40 ","color":"yellow"},{"text":"nuts!"}]
execute if entity @s[tag=NutUpgrade2] run scoreboard players set @a DekuNuts 40
execute unless entity @s[tag=NutUpgrade1] run tag @s add NutUpgrade1
execute if entity @s[tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run advancement grant @a only minecraft:_upgrades/nut_upgrade_1
execute if entity @s[tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run tellraw @a ["",{"text":"Now you can carry many "},{"text":"Deku Nuts","color":"red"},{"text":"! You can hold up to "},{"text":"30 ","color":"yellow"},{"text":"nuts!"}]
execute if entity @s[tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run scoreboard players set @a DekuNuts 30
fill -580 47 -711 -580 47 -711 minecraft:gold_block
clear @a minecraft:carrot_on_a_stick{DekuNutUpgrade:1b}
