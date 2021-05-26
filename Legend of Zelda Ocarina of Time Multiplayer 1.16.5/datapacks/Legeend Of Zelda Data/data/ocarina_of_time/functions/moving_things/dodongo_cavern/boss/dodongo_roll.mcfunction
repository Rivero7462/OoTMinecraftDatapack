#Rotation
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {Pose:{Head:[0f,0f,-10f]}}
execute if entity @s[scores={GameTimer=2}] run data merge entity @s {Pose:{Head:[0f,0f,-20f]}}
execute if entity @s[scores={GameTimer=3}] run data merge entity @s {Pose:{Head:[0f,0f,-30f]}}
execute if entity @s[scores={GameTimer=4}] run data merge entity @s {Pose:{Head:[0f,0f,-40f]}}
execute if entity @s[scores={GameTimer=5}] run data merge entity @s {Pose:{Head:[0f,0f,-50f]}}
execute if entity @s[scores={GameTimer=6}] run data merge entity @s {Pose:{Head:[0f,0f,-60f]}}
execute if entity @s[scores={GameTimer=7}] run data merge entity @s {Pose:{Head:[0f,0f,-70f]}}
execute if entity @s[scores={GameTimer=8}] run data merge entity @s {Pose:{Head:[0f,0f,-80f]}}
execute if entity @s[scores={GameTimer=9}] run data merge entity @s {Pose:{Head:[0f,0f,-90f]}}
execute if entity @s[scores={GameTimer=10}] run data merge entity @s {Pose:{Head:[0f,0f,-100f]}}
execute if entity @s[scores={GameTimer=11}] run data merge entity @s {Pose:{Head:[0f,0f,-110f]}}
execute if entity @s[scores={GameTimer=12}] run data merge entity @s {Pose:{Head:[0f,0f,-120f]}}
execute if entity @s[scores={GameTimer=13}] run data merge entity @s {Pose:{Head:[0f,0f,-130f]}}
execute if entity @s[scores={GameTimer=14}] run data merge entity @s {Pose:{Head:[0f,0f,-140f]}}
execute if entity @s[scores={GameTimer=15}] run data merge entity @s {Pose:{Head:[0f,0f,-150f]}}
execute if entity @s[scores={GameTimer=16}] run data merge entity @s {Pose:{Head:[0f,0f,-160f]}}
execute if entity @s[scores={GameTimer=17}] run data merge entity @s {Pose:{Head:[0f,0f,-170f]}}
execute if entity @s[scores={GameTimer=18}] run data merge entity @s {Pose:{Head:[0f,0f,-180f]}}
execute if entity @s[scores={GameTimer=19}] run data merge entity @s {Pose:{Head:[0f,0f,-190f]}}
execute if entity @s[scores={GameTimer=20}] run data merge entity @s {Pose:{Head:[0f,0f,-200f]}}
execute if entity @s[scores={GameTimer=21}] run data merge entity @s {Pose:{Head:[0f,0f,-210f]}}
execute if entity @s[scores={GameTimer=22}] run data merge entity @s {Pose:{Head:[0f,0f,-220f]}}
execute if entity @s[scores={GameTimer=23}] run data merge entity @s {Pose:{Head:[0f,0f,-230f]}}
execute if entity @s[scores={GameTimer=24}] run data merge entity @s {Pose:{Head:[0f,0f,-240f]}}
execute if entity @s[scores={GameTimer=25}] run data merge entity @s {Pose:{Head:[0f,0f,-250f]}}
execute if entity @s[scores={GameTimer=26}] run data merge entity @s {Pose:{Head:[0f,0f,-260f]}}
execute if entity @s[scores={GameTimer=27}] run data merge entity @s {Pose:{Head:[0f,0f,-270f]}}
execute if entity @s[scores={GameTimer=28}] run data merge entity @s {Pose:{Head:[0f,0f,-280f]}}
execute if entity @s[scores={GameTimer=29}] run data merge entity @s {Pose:{Head:[0f,0f,-290f]}}
execute if entity @s[scores={GameTimer=30}] run data merge entity @s {Pose:{Head:[0f,0f,-300f]}}
execute if entity @s[scores={GameTimer=31}] run data merge entity @s {Pose:{Head:[0f,0f,-310f]}}
execute if entity @s[scores={GameTimer=32}] run data merge entity @s {Pose:{Head:[0f,0f,-320f]}}
execute if entity @s[scores={GameTimer=33}] run data merge entity @s {Pose:{Head:[0f,0f,-330f]}}
execute if entity @s[scores={GameTimer=34}] run data merge entity @s {Pose:{Head:[0f,0f,-340f]}}
execute if entity @s[scores={GameTimer=35}] run data merge entity @s {Pose:{Head:[0f,0f,-350f]}}
execute if entity @s[scores={GameTimer=36}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if entity @s[scores={GameTimer=36..}] run scoreboard players set @s GameTimer 0

#Rotate
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] rotated as @e[type=armor_stand,tag=DodongoHead] run tp @s ~ ~ ~ ~-90 ~

#Forward
execute if entity @s[scores={timer=20..150}] if block ^-4 ^ ^ minecraft:air run tp @s ^-.4 ^ ^

#Turn
execute if entity @s[scores={timer=20..150}] unless block ^-4 ^ ^ minecraft:air if block ^ ^ ^4 minecraft:air run tag @s add Right
execute if entity @s[scores={timer=20..150}] unless block ^-4 ^ ^ minecraft:air if block ^ ^ ^-4 minecraft:air run tag @s add Left

#Right
execute if entity @s[tag=Right] run playsound minecraft:block.metal.break hostile @a ~ ~ ~ 3 .5
execute if entity @s[tag=Right] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Right] run scoreboard players set @s timer 16
execute unless entity @s[scores={lifetime=2..}] if entity @s[tag=Right] run tp @s ^ ^ ^ ~-90 ~
execute if entity @s[tag=Right] run tag @s remove Right
#Left
execute if entity @s[tag=Left] run playsound minecraft:block.metal.break hostile @a ~ ~ ~ 3 .5
execute if entity @s[tag=Left] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Left] run scoreboard players set @s timer 16
execute unless entity @s[scores={lifetime=2..}] if entity @s[tag=Left] run tp @s ^ ^ ^ ~90 ~
execute if entity @s[tag=Left] run tag @s remove Left

#Head
execute as @e[type=armor_stand,tag=DodongoHead] at @e[type=armor_stand,tag=DodongoRoll] if entity @s[tag=Wait] rotated as @e[type=armor_stand,tag=DodongoRoll] run tp @s ^ ^-10 ^ ~90 ~

#Hurt
execute if entity @s[scores={timer=20..150}] positioned ^ ^ ^ if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true

#Kill
execute if entity @s[scores={lifetime=2..}] as @e[type=armor_stand,tag=DodongoHead] at @s run tp @s ~ 13 ~
execute if entity @s[scores={lifetime=2..}] run tag @e[type=armor_stand,tag=DodongoHead] add Spin
execute if entity @s[scores={lifetime=2..}] run kill @s

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=20}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=40}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=60}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=80}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=100}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=120}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={timer=140}] run playsound minecraft:item.sweet_berries.pick_from_bush hostile @a ~ ~ ~ 1 .6
