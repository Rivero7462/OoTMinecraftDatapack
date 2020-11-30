particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal

#Early
execute positioned ~ ~-1 ~ if entity @a[distance=..1] unless entity @s[scores={timer=28..}] run scoreboard players set @s timer 28

#Move
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1}] run tp @s ~ ~ ~ facing entity @p eyes
execute if entity @s[scores={timer=2..}] run tp @s ^ ^ ^.6
execute if entity @s[scores={timer=29}] run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.03 10 normal
execute if entity @s[scores={timer=29}] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ .5 .7
execute if entity @s[scores={timer=30..}] run kill @s

#Hurt
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run replaceitem entity @a weapon.mainhand minecraft:air
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run replaceitem entity @a weapon.offhand minecraft:air
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 1 1 true
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 1 1 true
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @s[scores={timer=29}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
