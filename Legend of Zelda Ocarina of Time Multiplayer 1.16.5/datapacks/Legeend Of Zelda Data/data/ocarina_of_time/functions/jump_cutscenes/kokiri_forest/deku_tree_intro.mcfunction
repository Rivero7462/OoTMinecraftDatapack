execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run advancement grant @a only minecraft:_gear/root
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a -572 45 -596
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @s -572 45 -596
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run gamerule sendCommandFeedback 
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run setworldspawn 904 4 -635
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run spawnpoint @a -560 67 -704
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add StopTime
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a remove Intro
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run gamemode adventure @a
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoNavi
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a Hearts 0
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a HeartPiece 0
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a HeartContainer 0
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run data merge entity @e[type=area_effect_cloud,tag=Progress,limit=1] {Tags:["Progress"]}
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run data merge entity @e[type=area_effect_cloud,tag=Songs,limit=1] {Tags:["Songs"]}
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run time set 300
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run tellraw @p ["",{"text":"(Jump to advance the story. If ever you are unable to move, try jumping...)"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1..}] unless entity @e[type=item,x=-572,y=49,z=-596,dx=0,dz=0] as @a run loot spawn -572 49 -596 loot minecraft:blocks/player_head
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @p ["",{"text":"In the vast, deep forest of Hyrule..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @p ["",{"text":"Long have I served as the guardian spirit..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run summon minecraft:armor_stand -570.6 50.2 -595.3 {Rotation:[-90f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:40203}}},{}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],Pose:{Body:[90f,0f,0f],RightArm:[90f,0f,0f],LeftArm:[-80f,-20f,0f],Head:[90f,0f,60f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["Player","PlayerHead"]}
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run summon minecraft:armor_stand -571.2 50.9 -595.3 {Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:6369024}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{},{}],NoGravity:1b,Pose:{RightLeg:[90f,0f,0f],LeftLeg:[90f,10f,0f]},Invisible:1b,DisabledSlots:4144959,Tags:["Player","PlayerBody"]}
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] as @a run loot replace entity @e[type=armor_stand,tag=PlayerHead] armor.head loot minecraft:blocks/player_head
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @p ["",{"text":"I am known as the Deku Tree..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run fill -575 56 -603 -575 56 -603 minecraft:barrier
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run fill -574 56 -604 -574 56 -604 minecraft:barrier
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run fill -573 56 -603 -573 56 -603 minecraft:barrier
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run fill -574 56 -602 -574 56 -602 minecraft:barrier
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run fill -574 54 -603 -574 54 -603 minecraft:barrier
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tp @a -574 55 -603 -20 50
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @p ["",{"text":"The children of the forest, the Kokiri, live here with me."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @p ["",{"text":"Each Kokiri has his or her own guardian fairy."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @p ["",{"text":"However, there is one boy who does not have a fairy..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=12}] run tag @s add Part2

execute if entity @s[tag=Part2] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run kill @e[type=item,x=-572,y=49,z=-596,dx=0,dz=0]
execute if entity @s[scores={timer=1}] run kill @e[type=armor_stand,tag=PlayerBody]
execute if entity @s[scores={timer=1}] run scoreboard objectives remove click
execute if entity @s[scores={timer=1..429}] run tp @a @s
execute if entity @s[scores={timer=1}] run gamemode spectator @a

execute if entity @s[scores={timer=1}] run time set midnight
execute if entity @s[scores={timer=1}] run tp @a 973 63 1924
execute if entity @s[scores={timer=1}] run tp @s 973 63 1924
execute if entity @s[scores={timer=1}] run tp @e[type=armor_stand,tag=PlayerHead] 971 63 1924

execute if entity @s[scores={timer=15}] run data merge entity @e[type=armor_stand,tag=PlayerHead,limit=1] {Rotation:[180f],Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Body:[0f,0f,0f]}}
execute if entity @s[scores={timer=15}] run data modify entity @e[type=armor_stand,tag=PlayerHead,limit=1] ArmorItems[0] set value {id:"leather_boots",Count:1b,tag:{display:{color:6369024}}}
execute if entity @s[scores={timer=15}] run data modify entity @e[type=armor_stand,tag=PlayerHead,limit=1] ArmorItems[1] set value {id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}}
execute if entity @s[scores={timer=15}] run fill 966 71 1910 966 71 1910 minecraft:fire
execute if entity @s[scores={timer=15}] run fill 981 71 1910 981 71 1910 minecraft:fire
execute if entity @s[scores={timer=15}] run tp @s 985 68 1923 140 -8
execute if entity @s[scores={timer=15}] run tp @e[type=armor_stand,tag=PlayerHead] 974.0 67 1929 180 0

execute if entity @s[scores={timer=15..374}] as @e[type=armor_stand,tag=Zelda2] at @s run tp @s @e[type=horse,tag=WhiteHorse,limit=1]
execute if entity @s[scores={timer=15..374}] as @e[type=armor_stand,tag=Zelda2] at @s run tp @s ~ ~.6 ~.7
execute if entity @s[scores={timer=15..374}] as @e[type=armor_stand,tag=Impa2] at @s run tp @s @e[type=horse,tag=WhiteHorse,limit=1]
execute if entity @s[scores={timer=15..374}] as @e[type=armor_stand,tag=Impa2] at @s run tp @s ~ ~.6 ~.2
execute if entity @s[scores={timer=15..429}] as @e[type=armor_stand,tag=Ganondorf2] at @s run tp @s @e[type=horse,tag=GanonHorse2,limit=1]
execute if entity @s[scores={timer=15..429}] as @e[type=armor_stand,tag=Ganondorf2] at @s run tp @s ~ ~.6 ~.2

execute if entity @s[scores={timer=40}] run fill 965 61 1910 965 61 1910 minecraft:air
execute if entity @s[scores={timer=40}] run fill 964 61 1910 964 61 1910 minecraft:air
execute if entity @s[scores={timer=40}] run fill 964 61 1910 964 61 1910 minecraft:redstone_block

execute if entity @s[scores={timer=95}] as @e[type=horse,tag=WhiteHorse] at @s run tp @s 974.0 67 1889
execute if entity @s[scores={timer=96..200}] as @e[type=horse,tag=WhiteHorse] at @s run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=201..270}] as @e[type=horse,tag=WhiteHorse] at @s run tp @s ~ ~ ~.5
execute if entity @s[scores={timer=175}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-90f,0f]}}

execute if entity @s[scores={timer=99}] run tp @s 975.0 68 1894.3 143 71

execute if entity @s[scores={timer=121}] run tp @s 974.0 75 1913 180 -25

execute if entity @s[scores={timer=160}] run tp @s 975.2 67 1903.7 156 11

execute if entity @s[scores={timer=175}] run tp @s 974.0 68 1933 180 0

execute if entity @s[scores={timer=197}] run tp @s 973 63 1924
execute if entity @s[scores={timer=197}] run tp @e[type=armor_stand,tag=PlayerHead] 979 67 1929 90 ~
execute if entity @s[scores={timer=202}] run tp @s 984 68 1929 90 3

execute if entity @s[scores={timer=240}] run tp @s 977.0 67.4 1931 60 -5
execute if entity @s[scores={timer=240}] run tp @e[type=armor_stand,tag=PlayerHead] 979 67 1929 0 ~

execute if entity @s[scores={timer=260}] run tp @s 980 66 1927.0 14 -13
execute if entity @s[scores={timer=260}] run tp @e[type=horse,tag=GanonHorse2] 976 67 1926.0
execute if entity @s[scores={timer=280..301}] as @e[type=armor_stand,tag=PlayerHead] at @s run tp @s ~ ~ ~ ~-10.2 ~
execute if entity @s[scores={timer=305}] run tp @s 982 66 1929.0 105 -13

execute if entity @s[scores={timer=345}] run tp @s 978.1 66.7 1927 132 -18
execute if entity @s[scores={timer=365}] run data merge entity @e[type=armor_stand,tag=Ganondorf2,limit=1] {Pose:{Head:[10f,-45f,0f]}}
execute if entity @s[scores={timer=385}] run data merge entity @e[type=armor_stand,tag=Ganondorf2,limit=1] {Pose:{LeftArm:[-80f,-40f,0f]}}

execute if entity @s[scores={timer=395}] run tp @s 978 67.5 1928.0 -36 18

execute if entity @s[scores={timer=375}] run tp @e[type=horse,tag=WhiteHorse] 976 50 1896
execute if entity @s[scores={timer=375}] run tp @e[type=armor_stand,tag=Impa2] 978 49 1890
execute if entity @s[scores={timer=375}] run tp @e[type=armor_stand,tag=Zelda2] 980 49 1890

execute if entity @s[scores={timer=440}] run data merge entity @e[type=armor_stand,tag=Ganondorf2,limit=1] {Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @s[scores={timer=440}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=440}] run tp @e[type=horse,tag=GanonHorse2] 974 50 1896
execute if entity @s[scores={timer=440}] run tp @e[type=armor_stand,tag=Ganondorf2] 982 49 1890
execute if entity @s[scores={timer=440}] run kill @e[type=armor_stand,tag=PlayerHead]

execute if entity @s[scores={timer=440}] run gamemode adventure @a
execute if entity @s[scores={timer=440}] run tp @a -510 61 -640
execute if entity @s[scores={timer=440}] run tp @s -510 61 -640
execute if entity @s[scores={timer=440}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={timer=440}] run scoreboard players set @a click 1

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run time set 300
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tag @a add InKokiriForest
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @p ["",{"text":"Navi... Navi, where art thou? Come hither..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run function ocarina_of_time:music/deku_tree
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run fill -573 56 -602 -575 54 -604 minecraft:air replace minecraft:barrier
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Oh, ","color":"none"},{"text":"Navi the fairy","color":"aqua"},{"text":"... Listen to my words, the words of the ","color":"none"},{"text":"Deku Tree","color":"red"},{"text":"...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tp @a -489 72 -642 270 20
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4

execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Dost thou sense it? The climate of evil descending upon this realm...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Malevolent forces even now are mustering to attack our land of Hyrule...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"For so long, the ","color":"none"},{"text":"Kokiri Forest","color":"green"},{"text":", the source of life, has stood as a barrier, deterring outsiders and maintaining the order of the world...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"But...before this tremendous evil, even my power is as nothing...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"It seems the time has come for the ","color":"none"},{"text":"boy without a fairy","color":"red"},{"text":" to begin his journey...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @s[tag=Part2] if entity @a[scores={click=15}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"The youth whose destiny it is to lead Hyrule to the path of Justice and truth...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @s[tag=Part2] if entity @a[scores={click=17}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Navi","color":"aqua"},{"text":"...go now! Find our young friend and guide him to me...","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @s[tag=Part2] if entity @a[scores={click=19}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"I do not have much time left.","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @s[tag=Part2] if entity @a[scores={click=21}] run tellraw @p ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Fly, Navi, fly! The fate of the forest, nay, the world, depends upon thee!","color":"none"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=21}] run scoreboard players set @a click 22

execute if entity @s[tag=Part2] if entity @a[scores={click=22..}] run kill @e[type=area_effect_cloud,tag=OpeningCutscene]
execute if entity @s[tag=Part2] if entity @a[scores={click=22..}] run fill -490 71 -643 -488 73 -641 minecraft:air
execute if entity @s[tag=Part2] if entity @a[scores={click=22..}] run tag @a add FlyNavi
execute if entity @s[tag=Part2] if entity @a[scores={click=22..}] run tag @a remove NotStarted
execute if entity @s[tag=Part2] if entity @a[scores={click=22..}] run scoreboard objectives remove click

kill @e[type=wither_skeleton,tag=DekuBabaBody]
