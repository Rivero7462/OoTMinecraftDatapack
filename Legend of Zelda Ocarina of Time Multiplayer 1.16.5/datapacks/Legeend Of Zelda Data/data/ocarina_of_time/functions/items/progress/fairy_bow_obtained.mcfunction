execute if entity @a[tag=InForestTemple] if entity @a[nbt={Inventory:[{tag:{FairyBow:1b}}]}] run tellraw @a ["",{"text":"You found the","color":"white"},{"text":" Fairy Bow","color":"red"},{"text":"! Hold the arrow, right-click to aim and release to let fly with an "},{"text":"arrow","color":"red"},{"text":"."}]
execute if entity @a[tag=InForestTemple] if entity @a[nbt={Inventory:[{tag:{FairyBow:1b}}]}] run scoreboard players set @a ArrowCount2 30
execute if entity @a[tag=InForestTemple] if entity @a[nbt={Inventory:[{tag:{FairyBow:1b}}]}] run give @a minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute if entity @a[tag=InForestTemple] if entity @a[nbt={Inventory:[{tag:{FairyBow:1b}}]}] run tag @e[type=area_effect_cloud,tag=Progress] add FairyBow
execute if entity @a[tag=InForestTemple] if entity @a[nbt={Inventory:[{tag:{FairyBow:1b}}]}] run clear @a minecraft:bow
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
