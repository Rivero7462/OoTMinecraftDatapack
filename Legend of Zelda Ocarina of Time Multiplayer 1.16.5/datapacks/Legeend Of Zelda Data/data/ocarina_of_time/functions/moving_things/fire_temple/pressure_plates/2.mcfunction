fill 3112 47 2001 3112 47 2001 minecraft:gold_block
fill 3113 48 2004 3111 50 2004 minecraft:air
tp @e[type=armor_stand,tag=TrappedGoron2] 3112 48 2005
scoreboard players set @e[type=armor_stand,tag=TrappedGoron2] text 2
data merge entity @e[type=armor_stand,tag=TrappedGoron2,limit=1] {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
fill 3112 48 2001 3112 48 2001 minecraft:air

#3112 46.9 2005
#data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
