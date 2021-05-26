execute unless entity @a[scores={click=0..}] run fill 1068 68 2105 1068 68 2105 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1068 68 2103 1068 68 2103 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1067 68 2104 1067 68 2104 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1069 68 2104 1069 68 2104 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1068 67 2104 180 -45
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hoo hoot! "},{"selector":"@p"},{"text":"... Look up here!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"It appears the time has finally come for you to start your adventure!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"You will encounter many hardships ahead... That is your fate. Don't feel discouraged, even during the toughest times!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"If you go straight this way, you will see "},{"text":"Hyrule Castle","color":"red"},{"text":"."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"You will meet a "},{"text":"princess ","color":"red"},{"text":"there..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"All right then, I'll see you around! Hoot hoot hoot ho!"}]
execute if entity @a[scores={click=11}] run kill @e[type=armor_stand,tag=OwlStand1]
execute if entity @a[scores={click=11}] run summon minecraft:armor_stand 1068 75 2097 {Tags:["OwlFly"],Rotation:[-90f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=12..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..40}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.5 ~.1 ~
execute if entity @s[scores={timer=41..100}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.5 ~ ~


execute if entity @s[scores={timer=101..}] run tag @a remove StopStalchildSpawn
execute if entity @s[scores={timer=101..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=101..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={timer=101..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=101..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=101..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=101..}] run fill 1069 68 2103 1067 68 2105 minecraft:air
execute if entity @s[scores={timer=101..}] run tag @a remove Owl1
execute if entity @s[scores={timer=101..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=101..}] run scoreboard players set @s timer 0
