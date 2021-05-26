execute unless entity @a[scores={click=0..}] run fill 1038 68 1923 1038 68 1923 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1037 68 1922 1037 68 1922 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1036 68 1923 1036 68 1923 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1037 68 1924 1037 68 1924 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1037 67 1923 305 -55
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hey, "},{"selector":"@p"},{"text":"! Wait a second, friend!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Beyond this point, you'll find "},{"text":"Kakariko Village","color":"light_purple"},{"text":". Have you seen the princess of Hyrule? If not, I suggest you go to the castle."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"selector":"@p"},{"text":", you're the only one who can complete the quest ahead! You must do your best! Hoo!"}]
execute if entity @a[scores={click=5}] run kill @e[type=armor_stand,tag=OwlStand2]
execute if entity @a[scores={click=5}] run summon minecraft:armor_stand 1047 86 1930 {Tags:["OwlFly"],Rotation:[-100f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=6..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..40}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.5 ~.1 ~
execute if entity @s[scores={timer=41..80}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.5 ~ ~

execute if entity @s[scores={timer=81..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=81..}] run tag @a remove StopStalchildSpawn
execute if entity @s[scores={timer=81..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=81..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={timer=81..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=81..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=81..}] run fill 1038 68 1924 1036 68 1922 minecraft:air
execute if entity @s[scores={timer=81..}] run tag @a remove Owl2
execute if entity @s[scores={timer=81..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=81..}] run scoreboard players set @s timer 0
