execute unless entity @a[scores={click=0..}] run fill 822 63 2077 822 63 2077 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 822 63 2079 822 63 2079 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 821 63 2078 821 63 2078 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 823 63 2078 823 63 2078 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 822 62 2078 90 -50
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..}] run kill @e[type=zombie,tag=PeahatLarva]

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"selector":"@p"},{"text":"! Wait up, buddy! Hoo hoo!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Head south from here to reach "},{"text":"Lake Hylia's","color":"blue"},{"text":" full, rich waters."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"If you go west, you'll find "},{"text":"Gerudo Valley","color":"yellow"},{"text":". There's a hideout of a gang of thieves on the other side of the valley."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Well, you're free to go anywhere you want! Ho ho ho...hooo!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"No matter how hard it is, just don't get discouraged. Ho ho hoo!"}]
execute if entity @a[scores={click=9}] run kill @e[type=armor_stand,tag=OwlStand3]
execute if entity @a[scores={click=9}] run summon minecraft:armor_stand 809 78 2078 {Tags:["OwlFly"],Rotation:[88f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=10..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..40}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~.1 ~.1

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] run tag @a remove StopStalchildSpawn
execute if entity @s[scores={timer=41..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=41..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={timer=41..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=41..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=41..}] run fill 821 63 2079 823 63 2077 minecraft:air
execute if entity @s[scores={timer=41..}] run tag @a remove Owl3
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=41..}] run scoreboard players set @s timer 0
