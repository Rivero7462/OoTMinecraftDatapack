execute unless entity @a[scores={click=0..}] run fill 837 57 2196 837 57 2196 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 836 57 2195 836 57 2195 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 835 57 2196 835 57 2196 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 836 57 2197 836 57 2197 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 836 56 2196 -5 -28
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Beyond this point lies Lake Hylia. It is full of deep, pure water."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"The "},{"text":"Zoras","color":"blue"},{"text":", who live all the way upstream, guard the sunken temple at the lake's bottom, as well as Zora's Fountain."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Ho hoo hoot! OK, be careful and go!"}]
execute if entity @a[scores={click=5}] run kill @e[type=armor_stand,tag=OwlStand4]
execute if entity @a[scores={click=5}] run summon minecraft:armor_stand 837 61 2206 {Tags:["OwlFly"],Rotation:[90f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=6..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..50}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~.1 ~
execute if entity @s[scores={timer=51..120}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~ ~

execute if entity @s[scores={timer=121..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=121..}] run tag @a remove StopStalchildSpawn
execute if entity @s[scores={timer=121..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=121..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={timer=121..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=121..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=121..}] run fill 837 57 2195 835 57 2197 minecraft:air
execute if entity @s[scores={timer=121..}] run tag @a remove Owl4
execute if entity @s[scores={timer=121..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=121..}] run scoreboard players set @s timer 0
