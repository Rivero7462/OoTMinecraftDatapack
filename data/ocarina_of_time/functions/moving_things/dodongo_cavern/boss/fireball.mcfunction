scoreboard players add @s timer 1

particle minecraft:flame ~ ~1.8 ~ .5 .5 .5 0.01 5

execute if entity @s[scores={timer=1}] rotated as @e[type=armor_stand,tag=DodongoHead] run tp @s ~ ~ ~ ~ ~

execute if entity @s[scores={timer=2..80}] if block ^ ^ ^4.5 minecraft:air run tp @s ^ ^ ^.7
execute if entity @s[scores={timer=2..80}] unless block ^ ^ ^4.5 minecraft:air if block ^4 ^ ^ minecraft:air run tp @s ^ ^ ^.7 ~-90 ~
execute if entity @s[scores={timer=2..80}] unless block ^ ^ ^4.5 minecraft:air if block ^-4 ^ ^ minecraft:air run tp @s ^ ^ ^.7 ~90 ~

execute positioned ^ ^ ^-2 if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

execute positioned ^ ^ ^-2 if entity @a[distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute positioned ^ ^ ^-2 if entity @a[distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run replaceitem entity @a weapon.mainhand minecraft:air
execute positioned ^ ^ ^-2 if entity @a[distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute positioned ^ ^ ^-2 if entity @a[distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run replaceitem entity @a weapon.offhand minecraft:air

execute if entity @s[scores={timer=81..}] run kill @s
