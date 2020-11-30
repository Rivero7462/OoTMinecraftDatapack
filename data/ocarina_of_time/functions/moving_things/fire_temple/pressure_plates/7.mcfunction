fill 3136 112 1948 3136 112 1948 minecraft:gold_block
execute at @a run tp @a ~ ~ ~ facing entity @e[type=armor_stand,tag=TrappedGoron7,limit=1]
fill 3120 115 1984 3118 113 1984 minecraft:air
tp @e[type=armor_stand,tag=TrappedGoron7] 3119 113 1985
scoreboard players set @e[type=armor_stand,tag=TrappedGoron7] text 2
data merge entity @e[type=armor_stand,tag=TrappedGoron7,limit=1] {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
fill 3136 113 1948 3136 113 1948 minecraft:air

#3119 111.9 1985
#data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
