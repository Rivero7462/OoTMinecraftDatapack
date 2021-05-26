execute unless entity @a[scores={click=0..}] run fill -575 76 -715 -575 76 -715 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -575 76 -717 -575 76 -717 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -574 76 -716 -574 76 -716 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -576 76 -716 -576 76 -716 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -575 75 -716 0 -45
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hoo! Hoo!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Did you learn an ocarina song from Saria?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"That melody seems to have some mysterious power."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"There may be some other mysterious songs like this that you can learn in Hyrule."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"If you play the ocarina where a melody is necessary, a new cutscene will start."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"I recommend that you play a song you know."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"I also suggest that you play even when a score is not displayed. Just like this: hoo hoo hoo hoot hoot hoot!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"To view the list of melodies you've learned, right click with the ocarina to open the "},{"text":"Ocarina subscreen","color":"aqua"},{"text":" and right-click the song you want to play."}]
execute if entity @a[scores={click=15}] run kill @e[type=armor_stand,tag=OwlStand8]
execute if entity @a[scores={click=15}] run summon minecraft:armor_stand -575 81 -711 {Tags:["OwlFly"],Rotation:[90f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=16..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..10}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~.05 ~
execute if entity @s[scores={timer=11..41}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~ ~

execute if entity @s[scores={timer=41..}] run fill -574 76 -717 -576 76 -715 minecraft:air
execute if entity @s[scores={timer=41..}] run kill @e[type=armor_stand,tag=OwlFly]

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] run function ocarina_of_time:music/lost_woods
execute if entity @s[scores={timer=41..}] run tag @a remove LostWoodsOwl2
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=41..}] run scoreboard players set @s timer 0
