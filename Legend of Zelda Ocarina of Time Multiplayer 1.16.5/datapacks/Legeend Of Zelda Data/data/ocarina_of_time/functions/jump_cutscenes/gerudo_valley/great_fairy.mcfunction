execute unless entity @a[scores={click=0..}] run fill 460 37 479 460 37 479 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 459 37 480 459 37 480 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 460 37 481 460 37 481 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 461 37 480 461 37 480 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0
execute unless entity @a[scores={click=0..}] run tp @a 460 36 480
execute unless entity @a[scores={click=0..}] run tag @s add Appear
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @s[tag=Appear] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tp @s 460 34 472
execute if entity @s[scores={timer=2}] at @a run playsound minecraft:entity.cat.stray_ambient ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=2..15}] run tp @s ~ ~.3 ~ ~80 ~
execute if entity @s[scores={timer=16}] run tag @s remove Appear
execute if entity @s[scores={timer=16}] run tp @s 460 41 472 0 ~
execute if entity @s[scores={timer=16}] run scoreboard players set @a click 21
execute if entity @s[scores={timer=16}] run scoreboard players set @s timer 17

#First Appearance
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, "},{"selector":"@p"},{"text":"! I am the Great Fairy of Magic!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"I will give you a "},{"text":"magic spell","color":"red"},{"text":". Please take it."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run tellraw @a ["",{"text":"You got "},{"text":"Nayru's Love","color":"blue"},{"text":"! Cast this to create a powerful protective barrier. It's defensive magic you can use with right-click."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run tag @e[type=area_effect_cloud,tag=Progress] add GotNayruLove
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Nayru's Love\"}"},Unbreakable:1b,Damage:15,HideFlags:63,NayruLove:1b}
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run experience set @a 24 levels
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run effect give @a minecraft:regeneration 5 255 true
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Great Fairy:","color":"gold"},{"text":" Nayru's Love","color":"blue"},{"text":" is in effect for only a limited time, so use it carefully."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute unless entity @s[tag=Revisit] if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When battle has made you weary, please come back to see me."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=29}] run scoreboard players set @a click 30

#Second Appearance
execute if entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, "},{"selector":"@p"},{"text":"! I will soothe your wounds."}]
execute if entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When battle has made you weary, please come back to see me."}]
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run effect give @a minecraft:regeneration 5 255 true
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run experience set @a 24 levels
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 30

execute if entity @a[scores={click=30..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=19..40}] run tp @s ~ ~-.3 ~ ~80 ~
execute if entity @s[scores={timer=41}] run tp @s 460 31 472 0 ~

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] run fill 461 37 481 459 37 479 minecraft:air
execute if entity @s[scores={timer=41..}] run tag @s add Revisit
execute if entity @s[scores={timer=41..}] run tag @a remove GreatFairy5
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click
