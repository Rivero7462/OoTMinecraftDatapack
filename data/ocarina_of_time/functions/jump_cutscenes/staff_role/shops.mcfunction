scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run data merge entity @s {Pose:{RightArm:[-150f,30f,0f],LeftArm:[-70f,30f,0f]}}

execute if entity @s[scores={timer=11}] run data merge entity @s {Pose:{RightArm:[-145f,27f,0f],LeftArm:[-75f,26f,0f]}}
execute if entity @s[scores={timer=12}] run data merge entity @s {Pose:{RightArm:[-140f,24f,0f],LeftArm:[-80f,22f,0f]}}
execute if entity @s[scores={timer=13}] run data merge entity @s {Pose:{RightArm:[-135f,21f,0f],LeftArm:[-85f,18f,0f]}}
execute if entity @s[scores={timer=14}] run data merge entity @s {Pose:{RightArm:[-130f,18f,0f],LeftArm:[-90f,14f,0f]}}
execute if entity @s[scores={timer=15}] run data merge entity @s {Pose:{RightArm:[-125f,14f,0f],LeftArm:[-95f,10f,0f]}}
execute if entity @s[scores={timer=16}] run data merge entity @s {Pose:{RightArm:[-120f,10f,0f],LeftArm:[-100f,6f,0f]}}
execute if entity @s[scores={timer=17}] run data merge entity @s {Pose:{RightArm:[-115f,6f,0f],LeftArm:[-105f,2f,0f]}}
execute if entity @s[scores={timer=18}] run data merge entity @s {Pose:{RightArm:[-110f,2f,0f],LeftArm:[-110f,-2f,0f]}}
execute if entity @s[scores={timer=19}] run data merge entity @s {Pose:{RightArm:[-105f,-2f,0f],LeftArm:[-115f,-6f,0f]}}
execute if entity @s[scores={timer=20}] run data merge entity @s {Pose:{RightArm:[-100f,-6f,0f],LeftArm:[-120f,-10f,0f]}}
execute if entity @s[scores={timer=21}] run data merge entity @s {Pose:{RightArm:[-95f,-10f,0f],LeftArm:[-125f,-14f,0f]}}
execute if entity @s[scores={timer=22}] run data merge entity @s {Pose:{RightArm:[-90f,-14f,0f],LeftArm:[-130f,-18f,0f]}}
execute if entity @s[scores={timer=23}] run data merge entity @s {Pose:{RightArm:[-85f,-18f,0f],LeftArm:[-135f,-21f,0f]}}
execute if entity @s[scores={timer=24}] run data merge entity @s {Pose:{RightArm:[-80f,-22f,0f],LeftArm:[-140f,-24f,0f]}}
execute if entity @s[scores={timer=25}] run data merge entity @s {Pose:{RightArm:[-75f,-26f,0f],LeftArm:[-145f,-27f,0f]}}

execute if entity @s[scores={timer=26}] run data merge entity @s {Pose:{RightArm:[-70f,-30f,0f],LeftArm:[-150f,-30f,0f]}}

execute if entity @s[scores={timer=36}] run data merge entity @s {Pose:{RightArm:[-75f,-26f,0f],LeftArm:[-145f,-27f,0f]}}
execute if entity @s[scores={timer=37}] run data merge entity @s {Pose:{RightArm:[-80f,-22f,0f],LeftArm:[-140f,-24f,0f]}}
execute if entity @s[scores={timer=38}] run data merge entity @s {Pose:{RightArm:[-85f,-18f,0f],LeftArm:[-135f,-21f,0f]}}
execute if entity @s[scores={timer=39}] run data merge entity @s {Pose:{RightArm:[-90f,-14f,0f],LeftArm:[-130f,-18f,0f]}}
execute if entity @s[scores={timer=40}] run data merge entity @s {Pose:{RightArm:[-95f,-10f,0f],LeftArm:[-125f,-14f,0f]}}
execute if entity @s[scores={timer=41}] run data merge entity @s {Pose:{RightArm:[-100f,-6f,0f],LeftArm:[-120f,-10f,0f]}}
execute if entity @s[scores={timer=42}] run data merge entity @s {Pose:{RightArm:[-105f,-2f,0f],LeftArm:[-115f,-6f,0f]}}
execute if entity @s[scores={timer=43}] run data merge entity @s {Pose:{RightArm:[-110f,2f,0f],LeftArm:[-110f,-2f,0f]}}
execute if entity @s[scores={timer=44}] run data merge entity @s {Pose:{RightArm:[-115f,6f,0f],LeftArm:[-105f,2f,0f]}}
execute if entity @s[scores={timer=45}] run data merge entity @s {Pose:{RightArm:[-120f,10f,0f],LeftArm:[-100f,6f,0f]}}
execute if entity @s[scores={timer=46}] run data merge entity @s {Pose:{RightArm:[-125f,14f,0f],LeftArm:[-95f,10f,0f]}}
execute if entity @s[scores={timer=47}] run data merge entity @s {Pose:{RightArm:[-130f,18f,0f],LeftArm:[-90f,14f,0f]}}
execute if entity @s[scores={timer=48}] run data merge entity @s {Pose:{RightArm:[-135f,21f,0f],LeftArm:[-85f,18f,0f]}}
execute if entity @s[scores={timer=49}] run data merge entity @s {Pose:{RightArm:[-140f,24f,0f],LeftArm:[-80f,22f,0f]}}
execute if entity @s[scores={timer=50}] run data merge entity @s {Pose:{RightArm:[-145f,27f,0f],LeftArm:[-75f,26f,0f]}}

execute if entity @s[scores={timer=51}] run scoreboard players set @s timer 0

execute if entity @s[scores={timer=50}] run tp @s ^-.2 ^ ^
execute if entity @s[scores={timer=25}] run tp @s ^.2 ^ ^
