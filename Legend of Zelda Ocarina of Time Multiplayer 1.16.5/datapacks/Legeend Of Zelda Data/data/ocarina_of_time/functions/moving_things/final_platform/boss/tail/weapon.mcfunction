execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 1.7
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s timer 1
execute if entity @s[nbt={HurtTime:10s}] run tag @e[type=armor_stand,tag=GanonBody] add Cooldown
execute if entity @s[nbt={HurtTime:10s}] unless entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add Stun
execute if entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[nbt={HurtTime:10s}] if entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add Stun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[nbt={HurtTime:10s}] if entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add BigStun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[nbt={HurtTime:10s}] if entity @s[scores={timer=10..}] run scoreboard players set @s timer 0
