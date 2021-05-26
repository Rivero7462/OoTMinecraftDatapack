#Summon
execute if entity @s[tag=SummonSlowFire] run summon minecraft:armor_stand ~ ~ ~ {Tags:["SlowFireWall","SlowFireWall1"],Rotation:[135f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @s[tag=SummonSlowFire] run summon minecraft:armor_stand ~ ~ ~ {Tags:["SlowFireWall","SlowFireWall2"],Rotation:[135f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @s[tag=SummonSlowFire] run summon minecraft:armor_stand ~ ~ ~ {Tags:["SlowFireWall","SlowFireWall3"],Rotation:[135f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @s[tag=SummonSlowFire] run summon minecraft:armor_stand ~ ~ ~ {Tags:["SlowFireWall","SlowFireWall4"],Rotation:[135f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @s[tag=SummonSlowFire] run tag @s remove SummonSlowFire

#Hurt
execute if entity @s[tag=Hurt,tag=Left,scores={timer=1..900}] run scoreboard players remove @s timer 1
execute if entity @s[tag=Hurt,tag=Right,scores={timer=1..900}] run scoreboard players add @s timer 1

#Left
execute if entity @s[tag=!Hurt,tag=Left] run scoreboard players add @s timer 1

execute if entity @s[tag=Left,scores={timer=2}] run tp @s 3105 110 1974 135 ~
execute if entity @s[tag=!Hurt,tag=Left,scores={timer=3..229}] run tp @s ^ ^ ^.05
execute if entity @s[tag=Hurt,tag=Left,scores={timer=3..229}] run tp @s ^ ^ ^-.05
execute if entity @s[tag=Left,scores={timer=230}] run tp @s 3097 110 1966 135 ~
execute if entity @s[tag=Left,scores={timer=231}] run tp @s 3097 110 1966 153 ~
execute if entity @s[tag=!Hurt,tag=Left,scores={timer=232..320}] run tp @s ^ ^ ^.05
execute if entity @s[tag=Hurt,tag=Left,scores={timer=232..320}] run tp @s ^ ^ ^-.05

execute if entity @s[tag=Left,scores={timer=321}] run tp @s 3095 110 1962 153 ~
execute if entity @s[tag=Left,scores={timer=322}] run tp @s 3095 110 1962 180 ~
execute if entity @s[tag=!Hurt,tag=Left,scores={timer=323..545}] run tp @s ^ ^ ^.05
execute if entity @s[tag=Hurt,tag=Left,scores={timer=323..545}] run tp @s ^ ^ ^-.05

execute if entity @s[tag=Left,scores={timer=546}] run tp @s 3095 110 1951 180 ~
execute if entity @s[tag=Left,scores={timer=547}] run tp @s 3095 110 1951 -143 ~

execute if entity @s[tag=!Hurt,tag=Left,scores={timer=548..900}] run tp @s ^ ^ ^.05
execute if entity @s[tag=Hurt,tag=Left,scores={timer=548..900}] run tp @s ^ ^ ^-.05
execute if entity @s[tag=Left,scores={timer=901}] run tp @s 3106.1 110 1937.4 -143 ~

execute if entity @s[tag=Left,scores={timer=901}] as @e[type=armor_stand,tag=SlowFireWall] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Left,scores={timer=901}] run tp @s 3105 110 1974 135 ~
execute if entity @s[tag=Left,scores={timer=910}] as @e[type=armor_stand,tag=SlowFireWall] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}]}
execute if entity @s[tag=Left,scores={timer=910..}] run scoreboard players set @s timer 1

#Hurt
execute positioned ^ ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-8 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-7 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-6 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-5 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-4 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-3 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-2 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-1 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^1 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^2 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^3 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^4 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^5 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^6 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^7 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^8 ^-2 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^ ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-8 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-7 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-6 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-5 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-4 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-3 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-2 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-1 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^1 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^2 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^3 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^4 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^5 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^6 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^7 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^8 ^-1 ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^ ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-8 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-7 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-6 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-5 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-4 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-3 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-2 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^-1 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^1 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^2 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^3 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^4 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^5 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^6 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^7 ^ ^ if entity @a[distance=..1] run tag @s add Hurt
execute positioned ^8 ^ ^ if entity @a[distance=..1] run tag @s add Hurt

#Right
execute if entity @s[tag=!Hurt,tag=Right] run scoreboard players remove @s timer 1

execute if entity @s[tag=Right,scores={timer=1}] as @e[type=armor_stand,tag=SlowFireWall] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Right,scores={timer=1}] run tp @s 3106.1 110 1937.4 -143 ~
execute if entity @s[tag=Right,scores={timer=-10}] as @e[type=armor_stand,tag=SlowFireWall] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}]}
execute if entity @s[tag=Right,scores={timer=..-10}] run scoreboard players set @s timer 901

execute if entity @s[tag=Right,scores={timer=2}] run tp @s 3105 110 1974 135 ~
execute if entity @s[tag=!Hurt,tag=Right,scores={timer=3..229}] run tp @s ^ ^ ^-.05
execute if entity @s[tag=Hurt,tag=Right,scores={timer=3..229}] run tp @s ^ ^ ^.05
execute if entity @s[tag=Right,scores={timer=230}] run tp @s 3097 110 1966 135 ~
execute if entity @s[tag=Right,scores={timer=231}] run tp @s 3097 110 1966 153 ~
execute if entity @s[tag=!Hurt,tag=Right,scores={timer=232..320}] run tp @s ^ ^ ^-.05
execute if entity @s[tag=Hurt,tag=Right,scores={timer=232..320}] run tp @s ^ ^ ^.05

execute if entity @s[tag=Right,scores={timer=321}] run tp @s 3095 110 1962 153 ~
execute if entity @s[tag=Right,scores={timer=322}] run tp @s 3095 110 1962 180 ~
execute if entity @s[tag=!Hurt,tag=Right,scores={timer=323..545}] run tp @s ^ ^ ^-.05
execute if entity @s[tag=Hurt,tag=Right,scores={timer=323..545}] run tp @s ^ ^ ^.05

execute if entity @s[tag=Right,scores={timer=546}] run tp @s 3095 110 1951 180 ~
execute if entity @s[tag=Right,scores={timer=547}] run tp @s 3095 110 1951 -143 ~

execute if entity @s[tag=!Hurt,tag=Right,scores={timer=548..900}] run tp @s ^ ^ ^-.05
execute if entity @s[tag=Hurt,tag=Right,scores={timer=548..900}] run tp @s ^ ^ ^.05
execute if entity @s[tag=Right,scores={timer=901}] run tp @s 3106.1 110 1937.4 -143 ~
