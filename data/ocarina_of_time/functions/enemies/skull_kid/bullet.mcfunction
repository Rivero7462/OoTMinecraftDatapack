scoreboard players add @s timer 1

#Shoot
execute if entity @s[scores={timer=1}] rotated as @e[type=zombie,tag=EvilSkullKid,distance=..2] run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={timer=2..}] run tp @s ^ ^ ^.4
execute if entity @s[scores={timer=60..}] run kill @s

#Damage
execute positioned ~ ~1 ~ if entity @a[distance=..0.5] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true
execute positioned ~ ~1 ~ if entity @a[distance=..0.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute positioned ~ ~1 ~ if entity @a[distance=..0.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run kill @s
execute positioned ~ ~1 ~ if entity @a[distance=..0.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute positioned ~ ~1 ~ if entity @a[distance=..0.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run kill @s
