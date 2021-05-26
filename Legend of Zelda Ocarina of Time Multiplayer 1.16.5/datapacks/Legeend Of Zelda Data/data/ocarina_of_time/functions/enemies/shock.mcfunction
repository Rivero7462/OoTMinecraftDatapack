scoreboard players add @a Shock 1
execute unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
particle minecraft:crit ~ ~1.8 ~ 0.2 0 0.2 1 1
execute if entity @s[scores={Shock=1}] run playsound minecraft:block.glass.break hostile @s ~ ~ ~ 1 2
execute if entity @s[scores={Shock=3}] run playsound minecraft:block.glass.break hostile @s ~ ~ ~ 1 2
execute if entity @s[scores={Shock=5}] run playsound minecraft:block.glass.break hostile @s ~ ~ ~ 1 2
execute if entity @s[scores={Shock=7}] run playsound minecraft:block.glass.break hostile @s ~ ~ ~ 1 2
execute if entity @s[scores={Shock=9}] run playsound minecraft:block.glass.break hostile @s ~ ~ ~ 1 2
execute if entity @s[scores={Shock=20}] run tag @s remove Shock
execute if entity @s[scores={Shock=20}] run scoreboard players reset @s Shock
