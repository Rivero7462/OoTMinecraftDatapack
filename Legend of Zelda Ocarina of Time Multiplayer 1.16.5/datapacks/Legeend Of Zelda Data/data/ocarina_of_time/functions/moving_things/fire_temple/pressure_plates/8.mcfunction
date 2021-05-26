fill 3024 113 1956 3024 113 1956 minecraft:iron_block
execute at @a run tp @a ~ ~ ~ facing entity @e[type=armor_stand,tag=TrappedGoron8,limit=1]
fill 3033 109 1955 3033 111 1958 minecraft:air
tp @e[type=armor_stand,tag=TrappedGoron8] 3034 109 1956
scoreboard players set @e[type=armor_stand,tag=TrappedGoron8] text 2
data merge entity @e[type=armor_stand,tag=TrappedGoron8,limit=1] {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

#3034 107.9 1956
#data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
