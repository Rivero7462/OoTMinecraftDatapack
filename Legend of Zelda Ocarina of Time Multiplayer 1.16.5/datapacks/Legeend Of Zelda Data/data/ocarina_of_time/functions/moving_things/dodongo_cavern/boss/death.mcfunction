#Rotation
execute unless entity @s[scores={timer=140..}] run scoreboard players add @s GameTimer 1
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=1}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=2}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=3}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=4}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=5}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=6}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=7}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=8}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=9}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=10}] run data merge entity @s {Pose:{Head:[0f,0f,-100f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=11}] run data merge entity @s {Pose:{Head:[0f,0f,-110f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=12}] run data merge entity @s {Pose:{Head:[0f,0f,-120f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=13}] run data merge entity @s {Pose:{Head:[0f,0f,-130f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=14}] run data merge entity @s {Pose:{Head:[0f,0f,-140f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=15}] run data merge entity @s {Pose:{Head:[0f,0f,-150f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=16}] run data merge entity @s {Pose:{Head:[0f,0f,-160f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=17}] run data merge entity @s {Pose:{Head:[0f,0f,-170f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=18}] run data merge entity @s {Pose:{Head:[0f,0f,-180f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=19}] run data merge entity @s {Pose:{Head:[0f,0f,-190f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=20}] run data merge entity @s {Pose:{Head:[0f,0f,-200f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=21}] run data merge entity @s {Pose:{Head:[0f,0f,-210f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=22}] run data merge entity @s {Pose:{Head:[0f,0f,-220f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=23}] run data merge entity @s {Pose:{Head:[0f,0f,-230f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=24}] run data merge entity @s {Pose:{Head:[0f,0f,-240f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=25}] run data merge entity @s {Pose:{Head:[0f,0f,-250f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=26}] run data merge entity @s {Pose:{Head:[0f,0f,-260f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=27}] run data merge entity @s {Pose:{Head:[0f,0f,-270f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=28}] run data merge entity @s {Pose:{Head:[0f,0f,-280f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=29}] run data merge entity @s {Pose:{Head:[0f,0f,-290f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=30}] run data merge entity @s {Pose:{Head:[0f,0f,-300f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=31}] run data merge entity @s {Pose:{Head:[0f,0f,-310f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=32}] run data merge entity @s {Pose:{Head:[0f,0f,-320f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=33}] run data merge entity @s {Pose:{Head:[0f,0f,-330f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=34}] run data merge entity @s {Pose:{Head:[0f,0f,-340f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=35}] run data merge entity @s {Pose:{Head:[0f,0f,-350f]}}
execute unless entity @s[scores={timer=140..}] if entity @s[scores={GameTimer=36}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if entity @s[scores={GameTimer=36..}] run scoreboard players set @s GameTimer 0

#Cutscene
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run function ocarina_of_time:music/dodongo_cavern
execute if entity @s[scores={timer=1}] run kill @e[type=armor_stand,tag=DodongoBody]
execute if entity @s[scores={timer=1}] run kill @e[type=armor_stand,tag=DodongoHead]
execute if entity @s[scores={timer=1}] run fill 2170 14 1897 2170 14 1897 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 2169 14 1898 2169 14 1898 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 2168 14 1897 2168 14 1897 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 2169 14 1896 2169 14 1896 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a 2169 13 1897 facing entity @s

#Forward
execute if entity @s[scores={timer=1..40}] run tp @s ^-.4 ^ ^
execute if entity @s[scores={timer=41}] run tp @s ^ ^ ^ ~-80 ~
execute if entity @s[scores={timer=42..70}] run tp @s ^-.4 ^ ^ ~-2 ~
execute if entity @s[scores={timer=71}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=72..90}] run tp @s ^-.4 ^ ^ ~-1 ~
execute if entity @s[scores={timer=91..100}] run tp @s ^-.2 ^ ^ ~ ~
execute if entity @s[scores={timer=101..140}] run tp @s ~ ~-.05 ~ ~ ~
execute if entity @s[scores={timer=141}] run data merge entity @s {Pose:{Head:[-55f,0f,0f]},ArmorItems:[{},{},{},{}]}
execute if entity @s[scores={timer=141}] run tp @s ~-1 ~2 ~-1
execute if entity @s[scores={timer=145}] run data merge entity @s {Pose:{Head:[-50f,0f,0f]},ArmorItems:[{},{},{},{id:dead_fire_coral_fan,Count:1b,tag:{CustomModelData:2}}]}
execute if entity @s[scores={timer=142..180}] run tp @s ~.05 ~-.01 ~ ~1 ~

execute if entity @s[scores={timer=190}] run fill 2161 12 1895 2162 14 1897 minecraft:barrier
execute if entity @s[scores={timer=190}] run fill 2163 12 1898 2158 14 1901 minecraft:barrier
execute if entity @s[scores={timer=190}] run fill 2158 12 1897 2160 14 1896 minecraft:barrier
execute if entity @s[scores={timer=190}] run fill 2166 11 1907 2146 11 1887 minecraft:red_sandstone replace minecraft:netherrack
execute if entity @s[scores={timer=190}] run fill 2157 11 1897 2155 11 1897 minecraft:light_blue_concrete
execute if entity @s[scores={timer=190}] run fill 2156 11 1898 2156 11 1896 minecraft:light_blue_concrete
execute if entity @s[scores={timer=190}] run tag @a add FireStone
execute if entity @s[scores={timer=190}] run clone 2165 4 1897 2165 4 1897 2162 12 1893
execute if entity @s[scores={timer=190}] run fill 2168 14 1898 2170 14 1896 minecraft:air
execute if entity @s[scores={timer=190}] run fill 2166 9 1896 2166 9 1896 minecraft:gold_block
execute if entity @s[scores={timer=190}] run tag @a remove Boss

#Sounds
execute if entity @s[scores={timer=60}] run playsound minecraft:block.lava.ambient hostile @a ~ ~ ~ 5 .7

execute if entity @s[scores={timer=1}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=20}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=40}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=60}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6

execute if entity @s[scores={timer=41}] run playsound minecraft:block.metal.break hostile @a ~ ~ ~ 3 .5
