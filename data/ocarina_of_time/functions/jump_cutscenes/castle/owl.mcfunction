execute unless entity @a[scores={click=0..}] run fill 897 76 948 897 76 948 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 898 76 949 898 76 949 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 898 76 947 898 76 947 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 899 76 948 899 76 948 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 898 75 948
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hey, "},{"selector":"@p"},{"text":"! This way!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"The princess is inside the castle just ahead. Be careful not to get caught by the guards! Ho ho ho hoot!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"On this ground, time flows normally."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"But time stands still while you are in Lon Lon Ranch or in a town."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"If you want time to pass normally, you'll need to leave town."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Well, well-which way are you going to go now? Hoo hoo hoot!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hoooo. You're a smart kid. Good luck, then. Hoo hoo."}]
execute if entity @a[scores={click=13}] run kill @e[type=armor_stand,tag=OwlStand5]
execute if entity @a[scores={click=13}] run summon minecraft:armor_stand 898 84 940 {Tags:["OwlFly"],Rotation:[135f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=14..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..40}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.4 ~.5 ~-.4
execute if entity @s[scores={timer=41..80}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.4 ~ ~-.4

execute if entity @s[scores={timer=81..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=81..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=81..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={timer=81..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=81..}] run fill 897 76 949 899 76 947 minecraft:air
execute if entity @s[scores={timer=81..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=81..}] run tag @a remove Owl5
execute if entity @s[scores={timer=81..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=81..}] run scoreboard players set @s timer 0
