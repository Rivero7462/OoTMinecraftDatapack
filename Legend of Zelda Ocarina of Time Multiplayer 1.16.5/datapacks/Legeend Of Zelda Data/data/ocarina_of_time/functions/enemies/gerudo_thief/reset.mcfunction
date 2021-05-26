tag @s remove NormalSlash
tag @s remove Block
tag @s remove Approach
tag @s remove StrafeRight
tag @s remove StrafeLeft
tag @s remove SpinAttack
tag @s remove BackJump
tag @s remove BigJump
data merge entity @s {Pose:{RightArm:[-120f,110f,-30f],LeftArm:[20f,0f,-30f]}}
scoreboard players set @s GameTimer 0
scoreboard players set @s lifetime 0
scoreboard players set @s time 0
tag @s remove Choice
