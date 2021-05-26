execute unless entity @s[scores={timer=0..}] run fill -27 117 821 -27 117 821 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -28 117 822 -28 117 822 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -26 117 822 -26 117 822 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -27 117 823 -27 117 823 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run tp @a -27 116 822
execute unless entity @s[scores={timer=0..}] run stopsound @a music
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run tp @e[type=armor_stand,tag=FakeNabooruKnuckle] -26.8 116.5 818 0 0
execute unless entity @s[scores={timer=0..}] run tp @s -27 113 818 0 0
execute unless entity @s[scores={timer=0..}] at @e[type=armor_stand,tag=Kotake2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["KotakeBroom2"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute unless entity @s[scores={timer=0..}] at @e[type=armor_stand,tag=Koume2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["KoumeBroom2"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 0

#Timer
execute if entity @s[scores={timer=0..80}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=30}] run tp @s -27 116 818 0 0
execute if entity @s[scores={timer=1..40}] at @e[type=armor_stand,tag=FakeNabooruKnuckle] run particle minecraft:soul_fire_flame ~.3 ~1 ~ .4 .4 .4 0 10 normal
execute if entity @s[scores={timer=35}] run kill @e[type=armor_stand,tag=FakeNabooruKnuckle]
execute if entity @s[scores={timer=50..56}] run tp @s ~ ~-.1 ~
execute if entity @s[scores={timer=53}] run data merge entity @s {Pose:{RightLeg:[70f,0f,0f],LeftLeg:[70f,0f,0f],Body:[10f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[-20f,0f,0f],Head:[40f,0f,0f]}}
execute if entity @s[scores={timer=80}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=80}] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={timer=80}] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Unnnh... Where am I...?","color":"white"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Well, well... Looks like she's back to normal... Koume...","color":"white"}]
execute if entity @a[scores={click=3}] run data merge entity @s {Pose:{RightLeg:[-30f,0f,0f],LeftLeg:[50f,0f,0f],Body:[0f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[-20f,0f,0f],Head:[-20f,80f,0f]}}
execute if entity @a[scores={click=3}] run tp @s -27 115.6 818
execute if entity @a[scores={click=3}] run function ocarina_of_time:music/kotake_koume
execute if entity @a[scores={click=3..}] if entity @s[scores={timer=81..111}] run scoreboard players add @s timer 1
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"She's just a little girl, but she commands a lot of respect among the Gerudo, Kotake...","color":"white"}]
execute if entity @a[scores={click=5}] run data merge entity @s {Pose:{RightLeg:[-30f,0f,0f],LeftLeg:[50f,0f,0f],Body:[0f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[-20f,0f,0f],Head:[-20f,-80f,0f]}}
execute if entity @a[scores={click=5..}] if entity @s[scores={timer=112..142}] run scoreboard players add @s timer 1
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Maybe we should make her work for the great Ganondorf for a little while longer! Ho ho ho!","color":"white"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"Then we should brainwash her again! Hee hee hee!","color":"white"}]
execute if entity @a[scores={click=9..}] if entity @s[scores={timer=143..}] run scoreboard players add @s timer 1
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

#Brooms
execute as @e[type=armor_stand,tag=KotakeBroom2] at @e[type=armor_stand,tag=Kotake2] rotated as @e[type=armor_stand,tag=Kotake2] run tp @s ^ ^ ^.3 ~ 0
execute as @e[type=armor_stand,tag=KoumeBroom2] at @e[type=armor_stand,tag=Koume2] rotated as @e[type=armor_stand,tag=Koume2] run tp @s ^ ^ ^.3 ~ 0

#Float
execute unless entity @s[scores={timer=230..}] unless entity @s[scores={timer=171}] unless entity @s[scores={timer=113..142}] unless entity @s[scores={timer=82..111}] if entity @a[scores={click=3..}] run scoreboard players add @s lifetime 1
execute unless entity @s[scores={timer=230..}] unless entity @s[scores={timer=171}] unless entity @s[scores={timer=113..142}] unless entity @s[scores={timer=82..111}] if entity @a[scores={click=3..}] if entity @s[scores={lifetime=1..3}] as @e[type=armor_stand,tag=Kotake2] at @s run tp @s ~ ~.05 ~
execute unless entity @s[scores={timer=230..}] unless entity @s[scores={timer=171}] unless entity @s[scores={timer=113..142}] unless entity @s[scores={timer=82..111}] if entity @a[scores={click=3..}] if entity @s[scores={lifetime=1..3}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.05 ~
execute unless entity @s[scores={timer=230..}] unless entity @s[scores={timer=171}] unless entity @s[scores={timer=113..142}] unless entity @s[scores={timer=82..111}] if entity @a[scores={click=3..}] if entity @s[scores={lifetime=6..8}] as @e[type=armor_stand,tag=Kotake2] at @s run tp @s ~ ~-.05 ~
execute unless entity @s[scores={timer=230..}] unless entity @s[scores={timer=171}] unless entity @s[scores={timer=113..142}] unless entity @s[scores={timer=82..111}] if entity @a[scores={click=3..}] if entity @s[scores={lifetime=6..8}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~-.05 ~
execute unless entity @s[scores={timer=230..}] unless entity @s[scores={timer=171}] unless entity @s[scores={timer=113..142}] unless entity @s[scores={timer=82..111}] if entity @a[scores={click=3..}] if entity @s[scores={lifetime=11..}] run scoreboard players set @s lifetime 0

#Timer 2
execute if entity @s[scores={timer=82..95}] run particle minecraft:soul_fire_flame -32 119 819 .4 .4 .4 0 10 normal
execute if entity @s[scores={timer=82}] run tp @e[type=armor_stand,tag=Kotake2] -37 113 816 -90 0
execute if entity @s[scores={timer=86}] run tp @e[type=armor_stand,tag=Kotake2] -37 118 816 -90 0
execute if entity @s[scores={timer=93}] run tp @e[type=armor_stand,tag=Kotake2] -32 118 819 -90 0
execute if entity @s[scores={timer=93}] run playsound minecraft:block.wart_block.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=94..110}] as @e[type=armor_stand,tag=Kotake2] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @s[scores={timer=111}] run tp @e[type=armor_stand,tag=Kotake2] -32 118 819 -90 0

execute if entity @s[scores={timer=113..126}] run particle minecraft:flame -22 119 819 .4 .4 .4 0 10 normal
execute if entity @s[scores={timer=113}] run tp @e[type=armor_stand,tag=Koume2] -17 113 816 90 0
execute if entity @s[scores={timer=117}] run tp @e[type=armor_stand,tag=Koume2] -17 118 816 90 0
execute if entity @s[scores={timer=124}] run tp @e[type=armor_stand,tag=Koume2] -22 118 819 90 0
execute if entity @s[scores={timer=124}] run playsound minecraft:block.wart_block.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=125..141}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @s[scores={timer=142}] run tp @e[type=armor_stand,tag=Koume2] -22 118 819 90 0

execute if entity @s[scores={timer=144..170}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:soul_fire_flame ~.4 ~1.2 ~.7 .1 .1 .1 0 1 normal
execute if entity @s[scores={timer=144..170}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:flame ~-.4 ~1.2 ~-.7 .1 .1 .1 0 1 normal

execute if entity @s[scores={timer=171}] as @e[type=armor_stand,tag=Kotake2] at @s run tp @s ~ ~ ~ -40 20
execute if entity @s[scores={timer=171}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ 40 20

execute if entity @s[scores={timer=172}] run playsound minecraft:entity.witch.death hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={timer=172}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^.5 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=172}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^.5 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=174}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^1 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=174}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^1 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=176}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^2 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=176}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^2 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=178}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^3 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=178}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^3 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=180}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^4 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=180}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^4 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=182}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^5 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=182}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^5 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=184}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^6 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=184}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^6 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=186}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:soul_fire_flame ^ ^1.5 ^7 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=186}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:flame ^ ^1.5 ^7 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=188}] run particle minecraft:soul_fire_flame -27 117 825 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=188}] run particle minecraft:flame -27 117 825 .1 .1 .1 0 5 normal
execute if entity @s[scores={timer=188}] run playsound minecraft:entity.panda.death ambient @a ~ ~ ~ .2 2

execute if entity @s[scores={timer=160}] run tp @s -27 116 818
execute if entity @s[scores={timer=160}] run data merge entity @s {Pose:{RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Body:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=161..174}] run tp @s ~-.08 ~ ~.3
execute if entity @s[scores={timer=175..188}] run tp @s ~.08 ~ ~.2
execute if entity @s[scores={timer=188}] run particle minecraft:flash ~ ~1 ~1 0 0 0 1 3
execute if entity @s[scores={timer=189}] run tp @s ~ ~-5 ~
execute if entity @s[scores={timer=195}] run tp @s -27 112 799

execute if entity @s[scores={timer=230..250}] as @e[type=armor_stand,tag=Kotake2] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @s[scores={timer=230..250}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @s[scores={timer=230..250}] at @e[type=armor_stand,tag=Kotake2] run particle minecraft:soul_fire_flame ~ ~1 ~ .3 .5 .3 0 10 normal
execute if entity @s[scores={timer=230..250}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:flame ~ ~1 ~ .3 .5 .3 0 10 normal

execute if entity @s[scores={timer=251}] as @e[type=armor_stand,tag=Kotake2] at @s run tp @s ~ ~-5 ~
execute if entity @s[scores={timer=251}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~-5 ~
execute if entity @s[scores={timer=255}] run tp @e[type=armor_stand,tag=Kotake2] -29 112 799
execute if entity @s[scores={timer=255}] run tp @e[type=armor_stand,tag=Koume2] -28 112 799

execute if entity @s[scores={timer=255}] run kill @e[type=armor_stand,tag=KotakeBroom2]
execute if entity @s[scores={timer=255}] run kill @e[type=armor_stand,tag=KoumeBroom2]
execute if entity @s[scores={timer=255}] run fill -27 116 806 -27 116 806 minecraft:stone_pressure_plate
execute if entity @s[scores={timer=255}] at @a run playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1

execute if entity @s[scores={timer=255}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=255}] run function ocarina_of_time:music/spirit_temple
execute if entity @s[scores={timer=255}] run fill -28 117 823 -26 117 821 minecraft:air
execute if entity @s[scores={timer=255}] run tag @a remove KillNabooru
execute if entity @s[scores={timer=255}] run scoreboard objectives remove click
execute if entity @s[scores={timer=255}] run scoreboard players reset @e[type=armor_stand,tag=Kotake2] timer
