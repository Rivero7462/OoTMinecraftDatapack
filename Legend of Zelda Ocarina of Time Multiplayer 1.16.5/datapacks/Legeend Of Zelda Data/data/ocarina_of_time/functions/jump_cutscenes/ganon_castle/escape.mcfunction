#Start
execute unless entity @s[scores={timer=0..}] run tag @a remove EscapeCastle
execute unless entity @s[scores={timer=0..}] run tag @s remove Escape
execute unless entity @s[scores={timer=0..}] run effect give @a minecraft:regeneration 3 255 true
execute unless entity @s[scores={timer=0..}] run experience set @a 24 levels
execute unless entity @s[scores={timer=0..}] run tag @e[type=armor_stand,tag=PrincessZelda4] remove Escape
execute unless entity @s[scores={timer=0..}] run tp @e[type=armor_stand,tag=PrincessZelda4] -636 39 892
execute unless entity @s[scores={timer=0..}] run scoreboard players reset @e[type=armor_stand,tag=PrincessZelda4] lifetime
execute unless entity @s[scores={timer=0..}] run summon minecraft:armor_stand -636 181 888 {Tags:["Crystal"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1,tag:{CustomModelData:21}}],DisabledSlots:2039583}
execute unless entity @s[scores={timer=0..}] run tp @s -636 181 888 0 ~

execute unless entity @s[scores={timer=0..}] run fill -635 174 889 -635 174 889 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -636 174 890 -636 174 890 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -635 174 891 -635 174 891 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -634 174 890 -634 174 890 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run tp @a -635 173 890 180 -40
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 0

execute if entity @s[scores={timer=0..}] unless entity @a[scores={click=0..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=5..44}] as @e[type=armor_stand,tag=Crystal] at @s run tp @s ~ ~-.2 ~
execute if entity @s[scores={timer=5..44}] run tp @s ~ ~-.2 ~
execute if entity @s[scores={timer=66}] run kill @e[type=armor_stand,tag=Crystal]

execute if entity @s[scores={timer=76}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={timer=76}] run scoreboard players set @a click 0
execute if entity @s[scores={timer=76}] run scoreboard players add @s timer 1

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run data merge entity @s {Pose:{Head:[10f,-30f,0f]}}
execute if entity @a[scores={click=1}] run tp @s ~ ~ ~ -20 ~
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Ganondorf... Pitiful man..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Without a strong, righteous mind, he could not control the power of the gods...and..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run fill -635 173 890 -635 173 890 minecraft:birch_trapdoor
execute if entity @a[scores={click=5}] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if entity @a[scores={click=5}] run tp @s ~ ~ ~ 0 ~
execute if entity @a[scores={click=5}] run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ .3 .5
execute if entity @a[scores={click=5..6}] as @a at @s unless block ~ ~-.1 ~ minecraft:air run tp @s ~ ~.05 ~
execute if entity @a[scores={click=5..6}] at @a if block ~ ~-.5 ~ minecraft:air run scoreboard players add @a click 1
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run fill -635 173 890 -635 173 890 minecraft:air
execute if entity @a[scores={click=7}] run function ocarina_of_time:music/escape_ganon_castle
execute if entity @a[scores={click=7}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"selector":"@p"},{"text":", listen to me! This tower will collapse soon!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"With his last breath, Ganondorf is trying to crush us in the ruins of the tower! We need to hurry and escape!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Please follow me!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13..}] run scoreboard objectives remove click

execute if entity @s[scores={timer=80}] run tp @s ~ ~ ~ 110 ~
execute if entity @s[scores={timer=81..129}] run tp @s ^ ^ ^.2 ~ 0

execute if entity @s[scores={timer=130..}] run tag @a add EscapeGanonTower
execute if entity @s[scores={timer=130..}] run fill -634 174 891 -636 174 889 minecraft:air
execute if entity @s[scores={timer=130..}] run tag @a add Escape1
execute if entity @s[scores={timer=130..}] run tag @a add Meteors
execute if entity @s[scores={timer=130..}] run tag @a add TimerRoom1
execute if entity @s[scores={timer=130..}] run tag @s add Escape
execute if entity @s[scores={timer=130..}] run tag @e[type=armor_stand,tag=PrincessZelda4] add Escape
execute if entity @s[scores={timer=130..}] run tag @a remove EscapeCastle2
execute if entity @s[scores={timer=130..}] run scoreboard players reset @s timer
