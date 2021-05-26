scoreboard players set @s timer 0
tag @s remove Action
tag @s remove BigStun
tag @s remove BigAttack
tag @s remove RightSquish
tag @s remove RightShake
tag @s remove LeftSquish
tag @s remove LeftShake
tag @s remove RightCut
tag @s remove LeftCut
tag @s remove Clap
tag @s remove RightSlap
tag @s remove LeftSlap
tag @s remove RightPunch
tag @s remove LeftPunch
tag @s remove RightSlam
tag @s remove LeftSlam
tag @s remove Frozen
scoreboard players set @s BlueRupee2 0
scoreboard players set @s ArrowCount 0
scoreboard players set @s lifetime 0
data merge entity @s {Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=BongoHand1,tag=!Stun,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
data merge entity @e[type=armor_stand,tag=BongoHand2,tag=!Stun,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute at @s[tag=BongoHand1] unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] run tp @s[tag=BongoHand1] ~ ~1.5 ~
