scoreboard players set @e[type=armor_stand,tag=BongoHand] timer 0
tag @e[type=armor_stand,tag=BongoHand] remove Action
tag @e[type=armor_stand,tag=BongoHand] remove BigStun
tag @e[type=armor_stand,tag=BongoHand] remove BigAttack
tag @e[type=armor_stand,tag=BongoHand] remove RightSquish
tag @e[type=armor_stand,tag=BongoHand] remove RightShake
tag @e[type=armor_stand,tag=BongoHand] remove LeftSquish
tag @e[type=armor_stand,tag=BongoHand] remove LeftShake
tag @e[type=armor_stand,tag=BongoHand] remove RightCut
tag @e[type=armor_stand,tag=BongoHand] remove LeftCut
tag @e[type=armor_stand,tag=BongoHand] remove Clap
tag @e[type=armor_stand,tag=BongoHand] remove RightSlap
tag @e[type=armor_stand,tag=BongoHand] remove LeftSlap
tag @e[type=armor_stand,tag=BongoHand] remove RightPunch
tag @e[type=armor_stand,tag=BongoHand] remove LeftPunch
tag @e[type=armor_stand,tag=BongoHand] remove RightSlam
tag @e[type=armor_stand,tag=BongoHand] remove LeftSlam
tag @e[type=armor_stand,tag=BongoHand] remove Stun
scoreboard players set @e[type=armor_stand,tag=BongoHand] GameTimer 0
scoreboard players set @e[type=armor_stand,tag=BongoHand] BlueRupee2 0
scoreboard players set @e[type=armor_stand,tag=BongoHand] ArrowCount 0
scoreboard players set @e[type=armor_stand,tag=BongoHand] lifetime 0
data merge entity @e[type=armor_stand,tag=BongoHand,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute at @s[tag=BongoHand1] unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] run tp @s[tag=BongoHand1] ~ ~1.5 ~
tag @s add Frozen
tag @e[type=armor_stand,tag=BongoHand] add Action
