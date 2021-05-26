scoreboard players add @s timer 1

#Tp
execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run fill 1535 82 1922 1535 82 1922 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1536 84 1922 1536 84 1922 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1535 84 1921 1535 84 1921 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1535 84 1923 1535 84 1923 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1534 84 1922 1534 84 1922 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a 1535 83 1922
execute if entity @s[scores={timer=1}] run function ocarina_of_time:music/dodongo_cavern

#Prep
execute if entity @s[scores={timer=50..150}] run particle minecraft:flame 1511 150 1800 .5 .5 .5 .5 100 force

#Erupt
execute if entity @s[scores={timer=151}] run playsound minecraft:entity.dragon_fireball.explode ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=151..250}] run particle minecraft:flame 1511 150 1800 .5 .5 .5 .5 400 force
execute if entity @s[scores={timer=151..250}] run particle minecraft:explosion 1511 151 1805 7 .5 7 .5 2 force

#Tp
execute if entity @s[scores={timer=161}] run fill 1536 82 1916 1536 82 1916 minecraft:barrier
execute if entity @s[scores={timer=161}] run fill 1536 84 1915 1536 84 1915 minecraft:barrier
execute if entity @s[scores={timer=161}] run fill 1537 84 1916 1537 84 1916 minecraft:barrier
execute if entity @s[scores={timer=161}] run fill 1536 84 1917 1536 84 1917 minecraft:barrier
execute if entity @s[scores={timer=161}] run fill 1535 84 1916 1535 84 1916 minecraft:barrier
execute if entity @s[scores={timer=161}] run tp @a 1536 83 1916 -22 24

execute if entity @s[scores={timer=171}] run data merge entity @e[type=armor_stand,tag=RoofGuy,limit=1] {Pose:{RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,0f,0f],RightLeg:[0f,0f,0f],Body:[0f,0f,0f]}}
execute if entity @s[scores={timer=171}] run tp @e[type=armor_stand,tag=RoofGuy] 1538 81 1920

execute if entity @s[scores={timer=190}] run tp @a 1535 83 1922 180 -10

#Return to Normal
execute if entity @s[scores={timer=251}] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 5 1
execute if entity @s[scores={timer=251..350}] run particle minecraft:flash 1511 150 1805 100 .5 100 .5 50 force
execute if entity @s[scores={timer=280}] run tag @a add MountainRing
execute if entity @s[scores={timer=251..280}] run particle minecraft:flame 1511 150 1800 .5 .5 .5 .5 200 force
execute if entity @s[scores={timer=281..350}] run particle minecraft:flame 1511 150 1800 .5 .5 .5 .5 100 force

#Reset
execute if entity @s[scores={timer=351}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=351}] run data merge entity @e[type=armor_stand,tag=RoofGuy,limit=1] {Pose:{RightArm:[15f,0f,0f],LeftLeg:[-40f,0f,0f],Head:[-15f,0f,0f],LeftArm:[15f,0f,0f],RightLeg:[-40f,0f,0f],Body:[-10f,0f,0f]}}
execute if entity @s[scores={timer=351}] run tp @e[type=armor_stand,tag=RoofGuy] 1538 81 1920.95 180 ~
execute if entity @s[scores={timer=351}] run fill 1536 82 1922 1534 84 1924 minecraft:air
execute if entity @s[scores={timer=351}] run fill 1535 82 1917 1537 84 1915 minecraft:air

#Tp
execute if entity @s[scores={timer=351}] run tag @a remove StartFireMedallion
execute if entity @s[scores={timer=351}] run tp @a 994 26 1466 180 ~
