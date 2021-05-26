particle minecraft:flame ~ ~ ~ .05 .05 .05 0 1 force
scoreboard players add @s timer 1
execute facing entity @a feet run tp @s ^ ^ ^.2 ~ ~

#Burn
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run replaceitem entity @a weapon.mainhand minecraft:air
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run replaceitem entity @a weapon.offhand minecraft:air
#Block
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..1] run kill @s

execute if entity @s[scores={timer=100..}] run kill @s
