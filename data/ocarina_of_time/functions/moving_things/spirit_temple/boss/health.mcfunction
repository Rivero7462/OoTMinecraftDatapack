execute at @e[type=armor_stand,tag=TwinrovaBody] run tp @s ~ ~-.5 ~ 
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.panda.death hostile @a ~ ~ ~ 1 1.5
