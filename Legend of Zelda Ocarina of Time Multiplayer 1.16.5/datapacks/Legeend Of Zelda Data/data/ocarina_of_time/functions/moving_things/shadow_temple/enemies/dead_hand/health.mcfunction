execute if entity @e[type=armor_stand,tag=DeadHand,tag=Lunge,tag=!Run] run tp @s ^ ^-1 ^1 ~ 0
execute if entity @e[type=armor_stand,tag=DeadHand,tag=Lunge,tag=!Run] run data merge entity @s {Invulnerable:0b}
execute unless entity @e[type=armor_stand,tag=DeadHand,tag=Lunge] run data merge entity @s {Invulnerable:1b}
execute unless entity @e[type=armor_stand,tag=DeadHand,tag=Lunge] run tp @s ~ ~ ~ ~ 0
execute unless entity @e[type=armor_stand,tag=DeadHand,tag=Attack] run data merge entity @s {Invulnerable:1b}
execute unless entity @e[type=armor_stand,tag=DeadHand,tag=Attack] run tp @s ~ ~ ~ ~ 0

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s timer 1
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players set @e[type=armor_stand,tag=DeadHand] timer 60
execute if entity @s[scores={timer=2..}] run tag @e[type=armor_stand,tag=DeadHand] add Run
execute if entity @s[scores={timer=2..}] run scoreboard players set @s timer 0

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 .5
