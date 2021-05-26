execute unless entity @a[scores={click=0..}] run fill 947 73 969 947 73 969 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 946 73 970 946 73 970 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 947 73 971 947 73 971 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 948 73 970 948 73 970 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0
execute unless entity @a[scores={click=0..}] run tp @a 947 72 970
execute unless entity @a[scores={click=0..}] run tag @s add Appear
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @s[tag=Appear] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tp @s 947 72 962
execute if entity @s[scores={timer=2}] at @a run playsound minecraft:entity.cat.stray_ambient ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=2..15}] run tp @s ~ ~.3 ~ ~80 ~
execute if entity @s[scores={timer=16}] run tag @s remove Appear
execute if entity @s[scores={timer=16}] run tp @s 947 77 962 0 ~
execute if entity @s[scores={timer=16}] run scoreboard players set @a click 21
execute if entity @s[scores={timer=16}] run scoreboard players set @s timer 17

#First Appearance
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, "},{"selector":"@p"},{"text":"! I am the Great Fairy of Magic!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"I will give you a "},{"text":"magic spell","color":"red"},{"text":". Please take it."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run tellraw @a ["",{"text":"You got "},{"text":"Din's Fire","color":"red"},{"text":"! Its fireball engulfs everything! It's attack magic you can use with right-click."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run tag @e[type=area_effect_cloud,tag=Progress] add GotDinFire
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Din's Fire\"}"},Unbreakable:1b,Damage:13,HideFlags:63,DinFire:1b}
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run experience set @a 24 levels
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run effect give @a minecraft:regeneration 5 255 true
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"You can use "},{"text":"Din's Fire","color":"red"},{"text":" not only to attack but also to burn things!"}]
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
execute if entity @s[scores={timer=41}] run tp @s 947 69 962 0 ~

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] run fill 948 73 971 946 73 969 minecraft:air
execute if entity @s[scores={timer=41..}] run tag @s add Revisit
execute if entity @s[scores={timer=41..}] run tag @a remove GreatFairy2
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click
