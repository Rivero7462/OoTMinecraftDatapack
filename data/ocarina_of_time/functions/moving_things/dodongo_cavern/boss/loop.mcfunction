#Summon
execute unless block 2166 9 1898 minecraft:gold_block run function ocarina_of_time:moving_things/dodongo_cavern/boss/summon

#Cutscene
execute as @e[type=armor_stand,tag=DodongoHead,tag=!Attack] at @s run function ocarina_of_time:moving_things/dodongo_cavern/boss/cutscene

#Head
execute as @e[type=armor_stand,tag=DodongoHead,tag=Attack] at @s run function ocarina_of_time:moving_things/dodongo_cavern/boss/head

#Body
execute as @e[type=armor_stand,tag=DodongoBody] at @e[type=armor_stand,tag=DodongoHead] run function ocarina_of_time:moving_things/dodongo_cavern/boss/body

#Health
execute as @e[type=ravager,tag=DodongoHealth] at @e[type=armor_stand,tag=DodongoHead] run function ocarina_of_time:moving_things/dodongo_cavern/boss/health

#Fireball
execute as @e[type=armor_stand,tag=Fireball] at @s run function ocarina_of_time:moving_things/dodongo_cavern/boss/fireball

#Roll
execute as @e[type=armor_stand,tag=DodongoRoll] at @s run function ocarina_of_time:moving_things/dodongo_cavern/boss/dodongo_roll

#Death Cutscene
execute if block 2166 9 1898 minecraft:gold_block at @e[type=armor_stand,tag=DodongoBody,tag=Attack] unless entity @e[type=ravager,tag=DodongoHealth] unless entity @e[type=armor_stand,tag=FinalRoll] run summon minecraft:armor_stand 2143 14 1893 {Tags:["FinalRoll"],Rotation:[-90f],Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:chorus_plant,Count:1b}],NoGravity:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=FinalRoll] at @s run function ocarina_of_time:moving_things/dodongo_cavern/boss/death
