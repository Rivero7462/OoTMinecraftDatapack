scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run fill 2180 61 1796 2180 61 1796 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 2181 61 1797 2182 61 1797 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 2183 61 1796 2183 61 1796 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 2182 61 1795 2181 61 1795 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a 2182.0 60 1796
#1
execute if entity @s[scores={timer=1..30}] run stopsound @a record
execute if entity @s[scores={timer=37}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1088939652,90785587,-1485951281,-1895189175],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNiYTk3NDcwNTg4NmMwYzFhY2FhNzk0MTY5NmE0ZTRiMjI0MDk1NGIzZWI3Nzk2OGVmNmJmZDdiOWFiZWI0NCJ9fX0="}]}}}}],Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=2}] as @a at @s run function ocarina_of_time:music/lost_woods
execute if entity @s[scores={timer=41}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-515148362,-1297463489,-2112837532,-533187698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWNjMTk0Yzk1NWE2ZDdkYWY4NzUzNjYwZDM1MDBhNzdkMTExMmQ1YWI0MzczNzhjOWY4ZTJhMDk5MGZjN2M0YyJ9fX0="}]}}}}],Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=41}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=49}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=49}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=57}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=57}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=65}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=65}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=73}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=81}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=89}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=97}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#2
execute if entity @s[scores={timer=105}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=105}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=113}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=113}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=121}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=121}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=129}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=129}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=137}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=145}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=153}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=161}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#3
execute if entity @s[scores={timer=169}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=169}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=177}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=177}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=185}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=185}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=193}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=193}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=201}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=209}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=217}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=225}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#4
execute if entity @s[scores={timer=233}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Oh!"}]
execute if entity @s[scores={timer=233}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=233}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=241}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=241}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=249}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=249}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=257}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=257}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=265}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=273}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Oh-oh!"}]
execute if entity @s[scores={timer=273}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=281}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=289}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#5
execute if entity @s[scores={timer=297}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=297}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=305}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=305}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=313}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=313}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=321}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=321}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=329}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"C'mon!"}]
execute if entity @s[scores={timer=329}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=337}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=345}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=353}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Come on! Come on! Come on!"}]
execute if entity @s[scores={timer=353}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#6
execute if entity @s[scores={timer=361}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=361}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=369}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=369}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=377}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=377}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=385}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=385}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=393..489}] run particle minecraft:flame 2182.0 60.5 1794.0 0.2 .3 0 0 5 force

execute if entity @s[scores={timer=393}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"HOT!"}]
execute if entity @s[scores={timer=393}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=401}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=409}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=417}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#7
execute if entity @s[scores={timer=425}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=425}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=433}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"What a hot beat!"}]
execute if entity @s[scores={timer=433}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=433}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=441}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=441}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=449}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=449}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=457}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=465}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"WHOOOOAH!"}]
execute if entity @s[scores={timer=465}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=473}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=481}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#8
execute if entity @s[scores={timer=489}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=489}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=497}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=497}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=505}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=505}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=513}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"YEEEEAH!"}]
execute if entity @s[scores={timer=513}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=513}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=521}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=529}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=537}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=545}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#9
execute if entity @s[scores={timer=553}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"YAHOOO!"}]
execute if entity @s[scores={timer=553}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=553}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=561}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=561}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=569}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=569}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=577}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=577}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=5585}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=593}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=601}] run data merge entity @s {Rotation:[270f],Pose:{Head:[0f,0f,0f],RightArm:[40f,0f,0f],LeftArm:[-135f,0f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=609}] run data merge entity @s {Rotation:[90f],Pose:{Head:[0f,0f,0f],RightArm:[-135f,0f,0f],LeftArm:[40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
#10
execute if entity @s[scores={timer=617}] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=617}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=625}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=625}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=633}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[-40f,-10f,0f]}}
execute if entity @s[scores={timer=633}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=641}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"YEEEEAH!"}]
execute if entity @s[scores={timer=641}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-40f,50f,0f],LeftArm:[-40f,-50f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=641}] run tp @s ~ ~.5 ~

execute if entity @s[scores={timer=643}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1088939652,90785587,-1485951281,-1895189175],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNiYTk3NDcwNTg4NmMwYzFhY2FhNzk0MTY5NmE0ZTRiMjI0MDk1NGIzZWI3Nzk2OGVmNmJmZDdiOWFiZWI0NCJ9fX0="}]}}}}],Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=643}] run function ocarina_of_time:music/goron_city

execute if entity @s[scores={timer=643..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=643..}] unless entity @a[tag=MeetDarunia2] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"No matter how many times I hear that song, It doesn't get old!"}]
execute if entity @s[scores={timer=643..}] unless entity @a[tag=MeetDarunia2] run fill 2183 61 1797 2180 61 1795 minecraft:air
execute if entity @s[scores={timer=643..}] if entity @a[tag=MeetDarunia2] run tag @a add DaruniaStart
execute if entity @s[scores={timer=643..}] run tag @a remove StartDaruniaDance
execute if entity @s[scores={timer=643..}] run scoreboard players set @s timer 0
