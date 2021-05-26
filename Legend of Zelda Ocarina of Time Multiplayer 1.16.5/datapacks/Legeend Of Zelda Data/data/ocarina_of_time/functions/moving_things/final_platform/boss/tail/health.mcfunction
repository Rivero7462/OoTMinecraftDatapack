#Hurt
execute if entity @a[nbt={Inventory:[{tag:{SwordHand:1b}}]}] run function ocarina_of_time:moving_things/final_platform/boss/tail/weapon

execute if entity @a[nbt={SelectedItem:{tag:{display:{Name:"\"Master Sword\""}}}}] run function ocarina_of_time:moving_things/final_platform/boss/tail/master_sword

#Arrows
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @e[type=arrow,distance=..2] at @s run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 1.7
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @e[type=arrow,distance=..2] run scoreboard players add @s timer 1
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @e[type=arrow,distance=..2] unless entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add Stun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @e[type=arrow,distance=..2] if entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add Stun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @e[type=arrow,distance=..2] if entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add BigStun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @e[type=arrow,distance=..2] if entity @s[scores={timer=10..}] run scoreboard players set @s timer 0
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @e[type=arrow,distance=..2] run tag @e[type=armor_stand,tag=GanonBody] add Cooldown

#Items
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @s[tag=ItemHurt] at @s run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 1.7
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[tag=ItemHurt] run scoreboard players add @s timer 1
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @s[tag=ItemHurt] unless entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add Stun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[tag=ItemHurt] if entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add Stun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[tag=ItemHurt] if entity @s[scores={timer=10..}] run tag @e[type=armor_stand,tag=GanonBody] add BigStun
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[tag=ItemHurt] if entity @s[scores={timer=10..}] run scoreboard players set @s timer 0
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Cooldown] if entity @s[tag=ItemHurt] run tag @e[type=armor_stand,tag=GanonBody] add Cooldown
execute unless entity @e[type=armor_stand,tag=GanonBody,tag=Halfway] if entity @s[tag=ItemHurt] run tag @s remove ItemHurt
