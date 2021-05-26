execute if entity @a[scores={time=13001..23000}] run kill @e[type=armor_stand,tag=GirlChasingCucco]
execute if entity @a[scores={time=13001..23000}] run kill @e[type=chicken,tag=CastleCucco]
execute if entity @a[scores={time=13001..23000}] run kill @e[type=armor_stand,tag=Sakon]

#Aleady Knows in Village
#Girl Chasing Cucco
execute unless entity @e[type=armor_stand,tag=GirlChasingCucco] unless entity @a[scores={time=13001..23000}] run summon minecraft:armor_stand 888 70 1415 {Tags:["GirlChasingCucco","Npc"],NoGravity:0b,Small:1b,ShowArms:1b,Invisible:1b,Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8736803}}},{id:"leather_leggings",Count:1,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16775501}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"GirlChasingCucco\"}",Id:[I;-1419197212,1622626132,-1964248192,-538971252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGViODQ4YzEyY2ViOTY4M2IzZjllZTg1ZDQ3ZTEyZTUxMzA5N2IwZTM3ZWZhNDAzYTIyYWJiOTc5MjQ1YTUifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=GirlChasingCucco] at @s unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/moving_people/girl

#Cucco
execute unless entity @e[type=chicken,tag=CastleCucco] unless entity @a[scores={time=13001..23000}] run summon minecraft:chicken 880 70 1415 {Tags:["CastleCucco"],Rotation:[0f],NoAI:0b,Attributes:[{Name:"generic.movement_speed",Base:0}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1}
execute as @e[type=chicken,tag=CastleCucco] at @s unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/moving_people/cucco

#Sakon
execute unless entity @e[type=armor_stand,tag=Sakon] unless entity @a[scores={time=13001..23000}] run summon minecraft:armor_stand 894 70 1436 {Tags:["Sakon","Npc"],NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:7023360}}},{id:"leather_leggings",Count:1,tag:{display:{color:1844676}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Sakon",Id:[I;-1068147826,144917093,-1222872467,-1645905694],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBhYTM5Mzc4N2NjN2VhNWNjN2JhMzEzNDI0N2ZiN2VhZTZkMTdhZDljODFlYWM5NTI4YmRjZWY5ZjU1OGMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:3}},{id:stone,Count:1b,tag:{CustomModelData:3}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=Sakon] at @s unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/moving_people/sakon
