execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/chamber_of_sages
execute unless entity @a[scores={click=0..}] run tp @a 1001 4 1386 -90 ~
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run data merge entity @e[type=armor_stand,tag=Rauru,limit=1] {Pose:{Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,00f,0f],RightArm:[0f,0f,0f]}}
execute if entity @a[scores={click=1..}] run scoreboard players add @e[type=armor_stand,tag=Rauru] timer 1
execute if entity @e[type=armor_stand,tag=Rauru,scores={timer=15}] run tp @e[type=armor_stand,tag=Rauru] 1005 4 1386 90 ~
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"selector":"@p"},{"text":", the hero!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Finally, all of us, the "},{"text":"six Sages","color":"red"},{"text":", have been awakened! The time for the final showdown with the King of Evil has come!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Before that, though, you should meet the one who is waiting for you..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The one who is waiting for you at the "},{"text":"Temple of Time","color":"aqua"},{"text":"..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=8..}] run time set day
execute if entity @a[scores={click=8..}] if entity @a[tag=InKokiriForest] run function ocarina_of_time:music/lost_woods
execute if entity @a[scores={click=8..}] if entity @a[tag=InKokiriForest] run tp @a -572 83.5 -818 0 ~
execute if entity @a[scores={click=8..}] if entity @a[tag=InDeathCrater] run tag @a add HotArea
execute if entity @a[scores={click=8..}] if entity @a[tag=InDeathCrater] run tag @a add InDeathCrater
execute if entity @a[scores={click=8..}] if entity @a[tag=InDeathCrater] run tag @a add CraterSpawn3
execute if entity @a[scores={click=8..}] if entity @a[tag=InDeathCrater] run function ocarina_of_time:music/dodongo_cavern
execute if entity @a[scores={click=8..}] if entity @a[tag=InDeathCrater] run tp @a 2690 37.5 1940 90 ~
execute if entity @a[scores={click=8..}] if entity @a[tag=InLakeChild] run function ocarina_of_time:music/hyrule_field
execute if entity @a[scores={click=8..}] if entity @a[tag=InLakeChild] run tp @a 774 66.5 2787 180 ~
execute if entity @a[scores={click=8..}] if entity @a[tag=InKakarikoVillage] run stopsound @a
execute if entity @a[scores={click=8..}] if entity @a[tag=InKakarikoVillage] run tp @a 1648 82.5 1950 90 ~
execute if entity @a[scores={click=8..}] if entity @a[tag=InDesertColossus] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[scores={click=8..}] if entity @a[tag=InDesertColossus] run tp @a 461 54.5 402 45 ~

execute if entity @a[scores={click=8..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=8..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=26..}] run scoreboard players set @s lifetime 26
execute if entity @a[scores={click=8..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=9..}] run scoreboard players set @s text 9
execute if entity @a[scores={click=8..}] run tag @a add ZeldaReunite
execute if entity @a[scores={click=8..}] run tag @e[type=area_effect_cloud,tag=Progress] add AllMedallions
execute if entity @a[scores={click=8..}] run tag @a remove SagesAwaken
execute if entity @a[scores={click=8..}] run scoreboard objectives remove click
