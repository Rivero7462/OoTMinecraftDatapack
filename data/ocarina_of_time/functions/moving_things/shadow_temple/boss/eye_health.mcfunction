tp @s ^ ^-3.2 ^.5

#Stun
execute if entity @e[type=armor_stand,tag=BongoHand,scores={BlueRupee2=2..60}] if entity @s[nbt={HurtTime:10s}] run tag @e[type=armor_stand,tag=BongoHand] add BigStun
execute if entity @e[type=armor_stand,tag=BongoHand,scores={BlueRupee2=2..}] if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 2 .6
