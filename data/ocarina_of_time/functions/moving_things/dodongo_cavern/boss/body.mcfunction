execute rotated as @e[type=armor_stand,tag=DodongoHead] positioned ^ ^ ^-8 run tp @s ~ ~ ~ ~ 0

execute at @s unless entity @e[type=armor_stand,tag=DodongoHead,tag=Stun] positioned ^ ^ ^ if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true
