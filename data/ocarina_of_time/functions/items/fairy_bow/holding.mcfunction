#Kill Bow
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]

#Torches
execute as @e[type=armor_stand,tag=UnlitTorch] run data merge entity @s {Marker:1b}
execute as @e[type=armor_stand,tag=LitTorch] run data merge entity @s {Marker:1b}

#Normal Arrows
tag @a add HideDisplayScore
execute if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] unless entity @s[tag=ShootingGame] unless entity @s[tag=HorseArchery] run scoreboard objectives setdisplay sidebar ArrowCount2
execute if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] if entity @s[tag=ShootingGame] run scoreboard objectives setdisplay sidebar MinigameSeeds
execute if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] if entity @s[tag=HorseArchery] run scoreboard objectives setdisplay sidebar MinigameSeeds
execute unless entity @s[tag=FireArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add HoldingBow
execute unless entity @s[tag=FireArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add NormalArrow
execute unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.mainhand minecraft:bow{display:{Name:"{\"text\":\"Fairy Bow\"}"},Unbreakable:1b,FairyBow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1
execute if entity @s[tag=HoldingBow] unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[tag=NormalArrow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.offhand minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrowFake:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1

#Fire Arrows
execute if entity @s[nbt={SelectedItem:{tag:{FireArrow:1b}}}] unless entity @s[tag=ShootingGame] unless entity @s[tag=HorseArchery] run scoreboard objectives setdisplay sidebar ArrowCount2
execute unless entity @s[tag=NormalArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] if entity @s[level=1..,nbt={SelectedItem:{tag:{FireArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add HoldingBow
execute unless entity @s[tag=NormalArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] if entity @s[level=1..,nbt={SelectedItem:{tag:{FireArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add FireArrow
execute unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[level=1..,nbt={SelectedItem:{tag:{FireArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.mainhand minecraft:bow{display:{Name:"{\"text\":\"Fairy Bow\"}"},Unbreakable:1b,FairyBow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1
execute if entity @s[tag=HoldingBow] unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[tag=FireArrow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{Potion:"healing",display:{Name:"{\"text\":\"Fire Arrow\"}"},FireArrowFake:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1

#Ice Arrows
execute if entity @s[nbt={SelectedItem:{tag:{IceArrow:1b}}}] unless entity @s[tag=ShootingGame] unless entity @s[tag=HorseArchery] run scoreboard objectives setdisplay sidebar ArrowCount2
execute unless entity @s[tag=NormalArrow] unless entity @s[tag=FireArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] if entity @s[level=1..,nbt={SelectedItem:{tag:{IceArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add HoldingBow
execute unless entity @s[tag=NormalArrow] unless entity @s[tag=FireArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] if entity @s[level=1..,nbt={SelectedItem:{tag:{IceArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add IceArrow
execute unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[level=1..,nbt={SelectedItem:{tag:{IceArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.mainhand minecraft:bow{display:{Name:"{\"text\":\"Fairy Bow\"}"},Unbreakable:1b,FairyBow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1
execute if entity @s[tag=HoldingBow] unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[tag=IceArrow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{Potion:"night_vision",display:{Name:"{\"text\":\"Fire Arrow\"}"},IceArrowFake:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1

#Light Arrows
execute if entity @s[nbt={SelectedItem:{tag:{LightArrow:1b}}}] unless entity @s[tag=ShootingGame] unless entity @s[tag=HorseArchery] run scoreboard objectives setdisplay sidebar ArrowCount2
execute unless entity @s[tag=NormalArrow] unless entity @s[tag=FireArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=EmptyBow] if entity @s[level=2..,nbt={SelectedItem:{tag:{LightArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add HoldingBow
execute unless entity @s[tag=NormalArrow] unless entity @s[tag=FireArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=EmptyBow] if entity @s[level=2..,nbt={SelectedItem:{tag:{LightArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s add LightArrow
execute unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[level=2..,nbt={SelectedItem:{tag:{LightArrow:1b}}}] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.mainhand minecraft:bow{display:{Name:"{\"text\":\"Fairy Bow\"}"},Unbreakable:1b,FairyBow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b} 1
execute if entity @s[tag=HoldingBow] unless entity @s[tag=EmptyBow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] if entity @s[tag=LightArrow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{Potion:"slow_falling",display:{Name:"{\"text\":\"Light Arrow\"}"},LightArrowFake:1b,CustomModelData:1,HideFlags:63,ArrowBow:1b,MainHandItem:1b}

#Remove
execute if entity @s[tag=NormalArrow] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{NormalArrowFake:1b}}]}] run tag @s remove HoldingBow
execute if entity @s[tag=FireArrow] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{FireArrowFake:1b}}]}] run tag @s remove HoldingBow
execute if entity @s[tag=IceArrow] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{IceArrowFake:1b}}]}] run tag @s remove HoldingBow
execute if entity @s[tag=LightArrow] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{LightArrowFake:1b}}]}] run tag @s remove HoldingBow

execute if entity @s[tag=NormalArrow] unless entity @s[nbt={SelectedItem:{tag:{FairyBow:1b}}}] run tag @s remove HoldingBow
execute if entity @s[tag=FireArrow] unless entity @s[nbt={SelectedItem:{tag:{FairyBow:1b}}}] run tag @s remove HoldingBow
execute if entity @s[tag=IceArrow] unless entity @s[nbt={SelectedItem:{tag:{FairyBow:1b}}}] run tag @s remove HoldingBow
execute if entity @s[tag=LightArrow] unless entity @s[nbt={SelectedItem:{tag:{FairyBow:1b}}}] run tag @s remove HoldingBow
execute if block ~ ~.5 ~ minecraft:water run tag @s remove HoldingBow
execute if block ~ ~ ~ minecraft:water run tag @s remove HoldingBow

execute if entity @s[tag=EmptyBow] run tag @s remove HoldingBow
execute unless entity @s[tag=HoldingBow] as @e[type=armor_stand,tag=UnlitTorch] run data merge entity @s {Marker:0b}
execute unless entity @s[tag=HoldingBow] as @e[type=armor_stand,tag=LitTorch] run data merge entity @s {Marker:0b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=NormalArrow] run clear @s minecraft:arrow
execute unless entity @s[tag=HoldingBow] if entity @s[tag=FireArrow] run clear @s minecraft:tipped_arrow{FireArrowFake:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=IceArrow] run clear @s minecraft:tipped_arrow{IceArrowFake:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=LightArrow] run clear @s minecraft:tipped_arrow{LightArrowFake:1b}
execute unless entity @s[tag=HoldingBow] run clear @s minecraft:bow
execute unless entity @s[tag=HoldingBow] unless entity @s[tag=ShootingGame] unless entity @s[tag=HorseArchery] if entity @s[tag=NormalArrow] run give @s minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=ShootingGame] if entity @s[tag=NormalArrow] run give @s minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},ShootingGallery:1b,NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=HorseArchery] if entity @s[tag=NormalArrow] run give @s minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},ShootingGallery:1b,NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=FireArrow] run give @s minecraft:tipped_arrow{Potion:"healing",display:{Name:"{\"text\":\"Fire Arrow\"}"},FireArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=IceArrow] run give @s minecraft:tipped_arrow{Potion:"night_vision",display:{Name:"{\"text\":\"Ice Arrow\"}"},IceArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute unless entity @s[tag=HoldingBow] if entity @s[tag=LightArrow] run give @s minecraft:tipped_arrow{Potion:"slow_falling",display:{Name:"{\"text\":\"Light Arrow\"}"},LightArrow:1b,CustomModelData:1,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute unless entity @s[tag=HoldingBow] run tag @s remove NormalArrow
execute unless entity @s[tag=HoldingBow] run tag @s remove FireArrow
execute unless entity @s[tag=HoldingBow] run tag @s remove IceArrow
execute unless entity @s[tag=HoldingBow] run tag @s remove LightArrow
execute unless entity @s[tag=HoldingBow] run tag @s add NoBow

#Empty
execute if entity @s[tag=!EmptyBow,scores={ArrowCount2=..0}] run tellraw @a {"text":"Out of Arrows!","color":"red"}
tag @s[scores={ArrowCount2=..0}] add EmptyBow
execute if entity @s[tag=EmptyBow] run clear @s minecraft:bow

execute if entity @s[level=..0,tag=FireArrow,tag=HoldingBow] run tellraw @a {"text":"Not Enough Magic!","color":"red"}
execute if entity @s[level=..0,tag=FireArrow,tag=HoldingBow] run scoreboard objectives setdisplay sidebar
execute if entity @s[level=..0,tag=FireArrow] run tag @s remove HoldingBow
execute if entity @s[level=..0,tag=IceArrow,tag=HoldingBow] run tellraw @a {"text":"Not Enough Magic!","color":"red"}
execute if entity @s[level=..0,tag=IceArrow,tag=HoldingBow] run scoreboard objectives setdisplay sidebar
execute if entity @s[level=..0,tag=IceArrow] run tag @s remove HoldingBow
execute if entity @s[level=..1,tag=LightArrow,tag=HoldingBow] run tellraw @a {"text":"Not Enough Magic!","color":"red"}
execute if entity @s[level=..1,tag=LightArrow,tag=HoldingBow] run scoreboard objectives setdisplay sidebar
execute if entity @s[level=..1,tag=LightArrow] run tag @s remove HoldingBow

#Use Bow
#scoreboard objectives add ArrowCount3 minecraft.used:minecraft.bow
execute if entity @s[tag=FireArrow,scores={ArrowCount3=1..}] run experience add @s -1 levels
execute if entity @s[tag=IceArrow,scores={ArrowCount3=1..}] run experience add @s -1 levels
execute if entity @s[tag=LightArrow,scores={ArrowCount3=1..}] run experience add @s -2 levels
execute if entity @s[scores={ArrowCount3=1..}] unless entity @s[tag=ShootingGame] unless entity @s[tag=HorseArchery] run scoreboard players remove @s ArrowCount2 1
execute if entity @s[scores={ArrowCount3=1..}] if entity @s[tag=ShootingGame] run scoreboard players remove @s MinigameSeeds 1
execute if entity @s[scores={ArrowCount3=1..}] if entity @s[tag=HorseArchery] run scoreboard players remove @s MinigameSeeds 1
execute if entity @s[scores={ArrowCount3=1..}] run scoreboard players set @s ArrowCount3 0
