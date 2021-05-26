#Boss
execute positioned -602 52 276 if entity @a[tag=StartGanon,distance=..16] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/final_platform/boss/loop

#Fire
execute at @a if block ~ ~ ~1 minecraft:fire unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute at @a if block ~ ~ ~-1 minecraft:fire unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute at @a if block ~1 ~ ~ minecraft:fire unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute at @a if block ~-1 ~ ~ minecraft:fire unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true

#Pickup Master Sword
execute as @e[type=armor_stand,tag=MasterSword] at @s if entity @a[distance=..1] run give @a minecraft:diamond_sword{display:{Name:"\"Master Sword\""},HideFlags:63,Unbreakable:1,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot"]}
execute as @e[type=armor_stand,tag=MasterSword] at @s if entity @a[distance=..1] run scoreboard players set @e[type=armor_stand,tag=GanonBody] time 300
execute as @e[type=armor_stand,tag=MasterSword] at @s if entity @a[distance=..1] run kill @s
