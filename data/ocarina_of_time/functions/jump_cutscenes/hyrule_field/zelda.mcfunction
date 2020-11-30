execute as @e[type=armor_stand,tag=Zelda2] at @s run tp @s @e[type=horse,tag=WhiteHorse,limit=1]
execute as @e[type=armor_stand,tag=Zelda2] at @s run tp @s ~ ~.6 ~.7
execute as @e[type=armor_stand,tag=Impa2] at @s run tp @s @e[type=horse,tag=WhiteHorse,limit=1]
execute as @e[type=armor_stand,tag=Impa2] at @s run tp @s ~ ~.6 ~.2
execute at @s run tp @s @e[type=horse,tag=GanonHorse2,limit=1]
execute if entity @s[scores={timer=1}] run time set 13001
execute unless entity @s[scores={timer=1}] run tag @a add StopTime

execute unless entity @s[scores={timer=0..}] run tag @a add StopStalchildSpawn
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run tag @a remove ZeldaCastle
execute unless entity @s[scores={timer=0..}] run tag @a remove ZeldaText
execute unless entity @s[scores={timer=0..}] run fill 974 68 1926 974 68 1926 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 973 68 1927 973 68 1927 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 974 68 1928 974 68 1928 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 975 68 1927 975 68 1927 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run tp @a 974 67 1927

execute unless entity @a[scores={click=0..9}] unless entity @a[scores={click=51..53}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=30}] run summon minecraft:lightning_bolt 1030 68 1890
execute if entity @s[scores={timer=32}] run summon minecraft:lightning_bolt 1019 68 1890
execute if entity @s[scores={timer=38}] run summon minecraft:lightning_bolt 1037 68 1937
execute if entity @s[scores={timer=38}] run summon minecraft:lightning_bolt 1037 68 1937

execute if entity @s[scores={timer=95}] as @e[type=horse,tag=WhiteHorse] at @s run tp @s 974.0 67 1889

execute if entity @s[scores={timer=100}] run fill 965 61 1910 965 61 1910 minecraft:air
execute if entity @s[scores={timer=100}] run fill 964 61 1910 964 61 1910 minecraft:redstone_block

execute if entity @s[scores={timer=96..270}] as @e[type=horse,tag=WhiteHorse] at @s run tp @s ~ ~ ~.5
#Head Turn
execute if entity @s[scores={timer=165}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-10f,0f]}}
execute if entity @s[scores={timer=167}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-20f,0f]}}
execute if entity @s[scores={timer=169}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-30f,0f]}}
execute if entity @s[scores={timer=171}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-40f,0f]}}
execute if entity @s[scores={timer=173}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-50f,0f]}}
execute if entity @s[scores={timer=175}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-60f,0f]}}
execute if entity @s[scores={timer=177}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-70f,0f]}}
execute if entity @s[scores={timer=179}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-80f,0f]}}
execute if entity @s[scores={timer=181}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-90f,0f]}}
execute if entity @s[scores={timer=184}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-100f,0f]}}
execute if entity @s[scores={timer=187}] run data merge entity @e[type=armor_stand,tag=Zelda2,limit=1] {Pose:{Head:[0f,-110f,0f]}}

execute if entity @s[scores={timer=159}] run fill 973 68 1926 975 68 1928 minecraft:air
execute if entity @s[scores={timer=160..190}] as @a at @s run tp @s ~.16 ~ ~.06

execute if entity @s[scores={timer=191}] run fill 979 68 1930 979 68 1930 minecraft:barrier
execute if entity @s[scores={timer=191}] run fill 980 68 1929 980 68 1929 minecraft:barrier
execute if entity @s[scores={timer=191}] run fill 979 68 1928 979 68 1928 minecraft:barrier
execute if entity @s[scores={timer=191}] run fill 978 68 1929 978 68 1929 minecraft:barrier
execute if entity @s[scores={timer=191}] run tp @a 979 67 1929

execute if entity @s[scores={timer=220}] as @e[type=armor_stand,tag=Zelda2] at @s run summon minecraft:item ~ 67 ~ {Item:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Zelda's Ocarina\"}"},Unbreakable:1b,Damage:10,HideFlags:63,OcarinaZelda:1b,PickupDelay:0}}}
execute if entity @s[scores={timer=221}] run data merge entity @e[type=item,limit=1,x=973,y=67,z=1951,dx=1,dy=3,dz=1] {Motion:[0.28,1.0,-1.3]}

execute if entity @s[scores={timer=221}] run fill 982 66 1913 982 69 1913 minecraft:barrier
execute if entity @s[scores={timer=321}] run fill 982 66 1913 982 69 1913 minecraft:air

execute if entity @s[scores={timer=271}] run tp @e[type=horse,tag=WhiteHorse] 976 50 1896

execute if entity @s[scores={timer=220}] run tp @e[type=horse,tag=GanonHorse2] 976 67 1889
execute if entity @s[scores={timer=221..295}] as @e[type=horse,tag=GanonHorse2] at @s run tp @s ~ ~ ~.5
execute if entity @s[scores={timer=221..295}] at @s run tp @s ~ ~.6 ~.4
execute if entity @s[scores={timer=296..354}] at @s run tp @s ~ ~.6 ~

execute if entity @s[scores={timer=310}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={timer=310}] run scoreboard players set @a click 0
execute if entity @s[scores={timer=310}] run scoreboard players set @s timer 311

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Arrrrgh! I lost her!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"You, over there! Little kid!"}]
execute if entity @a[scores={click=3}] run data merge entity @s {Pose:{Head:[10f,-45f,0f]}}
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"You must have seen the white horse gallop past just now... Which way did it go?! Answer me!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"So you think you can protect them from me... You've got guts, kid."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Heh heh heh... You want a piece of me?! Very funny! I like your attitude!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @s[scores={timer=312}] run data merge entity @s {Pose:{LeftArm:[-80f,-40f,0f]}}
execute if entity @s[scores={timer=312..330}] run particle minecraft:witch 977.4 68.7 1927.3 .1 .1 .1 0 5
execute if entity @s[scores={timer=331..335}] run particle minecraft:witch 978.4 68.5 1928.3 .1 .1 .1 0 5
execute if entity @s[scores={timer=336..340}] run particle minecraft:witch 979.4 68.5 1929.3 .1 .1 .1 0 5
execute if entity @s[scores={timer=335..339}] run effect give @a minecraft:resistance 10 4 true
execute if entity @s[scores={timer=338}] run data merge entity @s {Pose:{LeftArm:[0f,0f,0f]}}
execute if entity @s[scores={timer=338}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={timer=338}] run fill 978 68 1929 979 68 1928 minecraft:air
execute if entity @s[scores={timer=339}] run tp @a 980 67 1930
execute if entity @s[scores={timer=340}] run effect clear @a minecraft:wither
execute if entity @s[scores={timer=340}] run effect clear @a minecraft:resistance
execute if entity @s[scores={timer=340}] run fill 980 68 1931 980 68 1931 minecraft:barrier
execute if entity @s[scores={timer=340}] run fill 981 68 1930 981 68 1930 minecraft:barrier

execute if entity @s[scores={timer=340}] run scoreboard players set @a click 51
execute if entity @s[scores={timer=340}] run scoreboard players set @s timer 342

execute if entity @a[scores={click=51}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Pathetic little fool! Do you realize who you are dealing with?!"}]
execute if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[scores={click=53}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"I am "},{"text":"Ganondorf","color":"red"},{"text":"! And soon I will rule the world!"}]
execute if entity @a[scores={click=53}] run scoreboard players set @a click 54

execute if entity @s[scores={timer=343}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if entity @s[scores={timer=355..500}] as @e[type=horse,tag=GanonHorse2] at @s run tp @s ~ ~ ~.5
execute if entity @s[scores={timer=355..500}] at @s run tp @s ~ ~.6 ~.4
execute if entity @s[scores={timer=501}] run tp @e[type=horse,tag=GanonHorse2] 974 50 1896

execute if entity @s[scores={timer=502}] run time set day
execute if entity @s[scores={timer=502..}] run tag @a remove StopTime
execute if entity @s[scores={timer=502..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=502..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=14..}] run scoreboard players set @s lifetime 14
execute if entity @s[scores={timer=502..}] run tag @a add NewOcarina
execute if entity @s[scores={timer=502..}] run tag @a add CastleTownText
execute if entity @s[scores={timer=502..}] run tag @a add KakarikoSoldier
execute if entity @s[scores={timer=502..}] run tag @a remove StopStalchildSpawn
execute if entity @s[scores={timer=502..}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=502..}] run fill 981 68 1929 979 68 1931 minecraft:air
execute if entity @s[scores={timer=502..}] run tag @a remove ZeldaCastle2
execute if entity @s[scores={timer=502..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=502..}] run scoreboard players set @s timer 0
