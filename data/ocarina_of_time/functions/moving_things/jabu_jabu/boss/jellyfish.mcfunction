execute if entity @s[nbt={HurtTime:10s}] run tag @s add Kill

execute if entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Kill] run kill @s
