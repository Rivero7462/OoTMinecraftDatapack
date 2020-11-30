execute rotated as @s if entity @s[tag=HandHealth1] at @e[type=armor_stand,tag=BongoHand1] run tp @s ~ ~-.6 ~ ~ ~
execute rotated as @s if entity @s[tag=HandHealth2] at @e[type=armor_stand,tag=BongoHand2] run tp @s ~ ~-.6 ~ ~ ~

#Arrow
execute at @s[tag=HandHealth1] unless entity @s[nbt={Invulnerable:1b}] positioned ~ ~1 ~ if entity @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..5] as @e[type=armor_stand,tag=BongoHand1] run function ocarina_of_time:moving_things/shadow_temple/boss/frozen
execute at @s[tag=HandHealth2] unless entity @s[nbt={Invulnerable:1b}] positioned ~ ~1 ~ if entity @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..5] as @e[type=armor_stand,tag=BongoHand2] run function ocarina_of_time:moving_things/shadow_temple/boss/frozen
execute at @s[tag=HandHealth1] unless entity @s[nbt={Invulnerable:1b}] positioned ~ ~1 ~ as @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..5] run kill @s
execute at @s[tag=HandHealth2] unless entity @s[nbt={Invulnerable:1b}] positioned ~ ~1 ~ as @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..5] run kill @s

#Stun
execute if entity @s[tag=HandHealth1,nbt={HurtTime:10s}] run summon minecraft:zombie ~ ~ ~ {Tags:["BongoBongo","BongoDrop"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bongo_magic",Silent:1,NoAI:1b}
execute if entity @s[tag=HandHealth2,nbt={HurtTime:10s}] run summon minecraft:zombie ~ ~ ~ {Tags:["BongoBongo","BongoDrop"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bongo_arrows",Silent:1,NoAI:1b}

execute unless entity @e[type=armor_stand,tag=BongoHand1,tag=Frozen] unless entity @e[type=armor_stand,tag=BongoHand2,tag=Frozen] if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 1.5 1
execute unless entity @e[type=armor_stand,tag=BongoHand1,tag=Frozen] unless entity @e[type=armor_stand,tag=BongoHand2,tag=Frozen] if entity @s[tag=HandHealth1,nbt={HurtTime:10s}] run tag @e[type=armor_stand,tag=BongoHand1] add Stun
execute unless entity @e[type=armor_stand,tag=BongoHand1,tag=Frozen] unless entity @e[type=armor_stand,tag=BongoHand2,tag=Frozen] if entity @s[tag=HandHealth2,nbt={HurtTime:10s}] run tag @e[type=armor_stand,tag=BongoHand2] add Stun
