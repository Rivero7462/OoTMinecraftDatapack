scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run tag @a add NoOcarina
execute if entity @s[scores={lifetime=1}] run tp @a 1473 70 486
execute if entity @s[scores={lifetime=1}] run fill 1474 70 484 1475 79 488 minecraft:air
execute if entity @s[scores={lifetime=1}] run fill 1473 72 486 1473 72 486 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1473 71 485 1473 71 485 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1472 71 486 1472 71 486 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1473 71 487 1473 71 487 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1474 71 486 1474 71 486 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run summon minecraft:armor_stand 1473 72 486 {Tags:["Pillar","Pillar1"],Rotation:[-90f],Invisible:1b,NoGravity:1b,HandItems:[{id:cobblestone,Count:1,tag:{CustomModelData:112}},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}

#Move
execute if entity @s[scores={lifetime=20..42}] as @e[type=armor_stand,tag=Pillar1] at @s run tp @s ~-.5 ~.5 ~-.06
execute if entity @s[scores={lifetime=43..49}] as @e[type=armor_stand,tag=Pillar1] at @s run tp @s ~-.5 ~ ~-.06
execute if entity @s[scores={lifetime=50..68}] as @e[type=armor_stand,tag=Pillar1] at @s run tp @s ~-.5 ~-.4 ~-.06

execute if entity @s[scores={lifetime=69}] at @a run playsound minecraft:block.ancient_debris.break hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={lifetime=69}] run clone 1448 71 476 1453 79 478 1448 71 483
execute if entity @s[scores={lifetime=69}] run kill @e[tag=Pillar1]

#Pose
execute if entity @s[scores={lifetime=22}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[85f,0f,0f]}}
execute if entity @s[scores={lifetime=23}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[80f,0f,0f]}}
execute if entity @s[scores={lifetime=24}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[75f,0f,0f]}}
execute if entity @s[scores={lifetime=25}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[70f,0f,0f]}}
execute if entity @s[scores={lifetime=26}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[65f,0f,0f]}}
execute if entity @s[scores={lifetime=27}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[60f,0f,0f]}}
execute if entity @s[scores={lifetime=28}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[55f,0f,0f]}}
execute if entity @s[scores={lifetime=29}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[50f,0f,0f]}}
execute if entity @s[scores={lifetime=30}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[45f,0f,0f]}}
execute if entity @s[scores={lifetime=31}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[40f,0f,0f]}}
execute if entity @s[scores={lifetime=32}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[35f,0f,0f]}}
execute if entity @s[scores={lifetime=33}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[30f,0f,0f]}}
execute if entity @s[scores={lifetime=34}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[25f,0f,0f]}}
execute if entity @s[scores={lifetime=35}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[20f,0f,0f]}}
execute if entity @s[scores={lifetime=36}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[15f,0f,0f]}}
execute if entity @s[scores={lifetime=37}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[10f,0f,0f]}}
execute if entity @s[scores={lifetime=38}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[5f,0f,0f]}}
execute if entity @s[scores={lifetime=39}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=40}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-5f,0f,0f]}}
execute if entity @s[scores={lifetime=41}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-10f,0f,0f]}}
execute if entity @s[scores={lifetime=42}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-15f,0f,0f]}}
execute if entity @s[scores={lifetime=43}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-20f,0f,0f]}}
execute if entity @s[scores={lifetime=44}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-25f,0f,0f]}}
execute if entity @s[scores={lifetime=45}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-30f,0f,0f]}}
execute if entity @s[scores={lifetime=46}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-35f,0f,0f]}}
execute if entity @s[scores={lifetime=47}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-40f,0f,0f]}}
execute if entity @s[scores={lifetime=48}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-45f,0f,0f]}}
execute if entity @s[scores={lifetime=49}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-50f,0f,0f]}}
execute if entity @s[scores={lifetime=50}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-55f,0f,0f]}}
execute if entity @s[scores={lifetime=51}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-60f,0f,0f]}}
execute if entity @s[scores={lifetime=52}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-65f,0f,0f]}}
execute if entity @s[scores={lifetime=53}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-70f,0f,0f]}}
execute if entity @s[scores={lifetime=54}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-75f,0f,0f]}}
execute if entity @s[scores={lifetime=56}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-80f,0f,0f]}}
execute if entity @s[scores={lifetime=58}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-85f,0f,0f]}}
execute if entity @s[scores={lifetime=60}] as @e[type=armor_stand,tag=Pillar1] run data merge entity @s {Pose:{RightArm:[-90f,0f,0f]}}

#Finish
execute if entity @s[scores={lifetime=80..}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=80..}] run fill 1472 71 485 1474 72 487 minecraft:air
execute if entity @s[scores={lifetime=80..}] run tag @a remove ThrowPillar1
