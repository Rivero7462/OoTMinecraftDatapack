tag @s remove Reflect
data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}]}
playsound minecraft:entity.villager.hurt hostile @a ~ ~ ~ 2 .5
scoreboard players add @s time 1
scoreboard players set @s timer 0
