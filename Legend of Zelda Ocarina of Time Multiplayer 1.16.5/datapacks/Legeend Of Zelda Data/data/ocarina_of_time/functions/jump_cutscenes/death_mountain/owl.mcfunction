execute unless entity @a[scores={click=0..}] run fill 2027 157 1349 2027 157 1349 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2026 157 1350 2026 157 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2027 157 1351 2027 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2028 157 1350 2028 157 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 2027 156.5 1350 180 ~
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hoo hoot! Well, it looks like you've grown up a little from the Great Fairy's power..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"But you still don't really look like the hero who will save Hyrule. At least not yet!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"If you are going back "},{"text":"down the mountain","color":"red"},{"text":", I can lend you a wing. Come here and grab my talons! And hold on tight! Hoo hooooooot!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6

execute if entity @a[scores={click=7..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=7..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @a[scores={click=7..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={click=7..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @a[scores={click=7..}] run summon minecraft:armor_stand 2027 158 1350 {Tags:["OwlFly"],Rotation:[0f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=7..}] run tp @e[type=armor_stand,tag=OwlStand9] 2027 152 1347
execute if entity @a[scores={click=7..}] run fill 2026 157 1351 2028 157 1349 minecraft:air
execute if entity @a[scores={click=7..}] run tag @a remove MountainOwl
execute if entity @a[scores={click=7..}] run scoreboard objectives remove click
