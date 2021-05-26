tp @s ~ ~ ~

#Hit when stunned
execute if entity @s[nbt={HurtTime:10s}] run tag @s remove Stun
execute if entity @s[nbt={HurtTime:10s}] as @e[type=armor_stand,tag=DodongoHead,tag=Stun] run scoreboard players set @s time 139

#Sound
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 .5
