
execute unless block ~ ~.6 ~ #ocarina_of_time:peahat run kill @s

execute unless entity @s[tag=Kill] if entity @a[distance=..15] facing entity @p feet rotated ~ 0 positioned ^ ^ ^.1 rotated as @s run tp @s ~ ~-.02 ~ ~35 0
execute unless entity @s[tag=Kill] unless entity @a[distance=..15] facing entity @p feet rotated ~ 0 positioned ^ ^ ^.2 rotated as @s run tp @s ~ ~-.1 ~ ~35 0

#Shield
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Kill
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Kill

#Sounds
execute if entity @s[scores={GameTimer=1}] run playsound minecraft:item.shovel.flatten hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={GameTimer=2}] run scoreboard players set @s GameTimer 0
execute if entity @s[tag=Kill] run playsound

#Kill
execute if entity @s[tag=Kill] facing entity @p feet rotated ~ 0 positioned ^ ^ ^-2 rotated as @s run tp @s ~ ~ ~ ~35 0
execute if entity @s[tag=Kill] run playsound minecraft:entity.endermite.hurt hostile @a ~ ~ ~ 2 .5
execute if entity @s[tag=Kill] run kill @s

#Slingshot
execute if entity @e[type=snowball,distance=..1.5] run tag @s add Kill
execute as @e[type=snowball,distance=..1.5] run kill @s

#Bomb kill
