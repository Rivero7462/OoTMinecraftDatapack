execute unless entity @a[scores={click=0..}] run fill 2722 43 2017 2722 43 2017 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2723 43 2016 2723 43 2016 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2724 43 2017 2724 43 2017 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2723 43 2018 2723 43 2018 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0
execute unless entity @a[scores={click=0..}] run tp @a 2723 42 2017
execute unless entity @a[scores={click=0..}] run tag @s add Appear
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @s[tag=Appear] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tp @s 2723 39 2009
execute if entity @s[scores={timer=2}] at @a run playsound minecraft:entity.cat.stray_ambient ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=2..15}] run tp @s ~ ~.3 ~ ~80 ~
execute if entity @s[scores={timer=16}] run tag @s remove Appear
execute if entity @s[scores={timer=16}] run tp @s 2723 46 2009 0 ~
execute if entity @s[scores={timer=16}] run scoreboard players set @a click 21
execute if entity @s[scores={timer=16}] run scoreboard players set @s timer 17

#First Appearance
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, ","color":"white"},{"selector":"@p","color":"white"},{"text":"! I am the Great Fairy of Wisdom!","color":"white"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"I will grant you an enhancement to your ","color":"white"},{"text":"magic power","color":"green"},{"text":"."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Receive it now!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Your ","color":"white"},{"text":"Magic Meter ","color":"green"},{"text":"is enhanced!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tag @e[type=area_effect_cloud,tag=Progress] remove HalfMagic
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tag @e[type=area_effect_cloud,tag=Progress] add FullMagic
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run experience set @a 24 levels
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run effect give @a minecraft:regeneration 5 255 true
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute unless entity @s[tag=Revisit] if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Your magic has been enhanced! Now you have "},{"text":"twice ","color":"red"},{"text":"as much magic power!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute unless entity @s[tag=Revisit] if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When battle has made you weary, please come back to see me."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=31}] run scoreboard players set @a click 33

#Second Appearance
execute if entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, "},{"selector":"@p"},{"text":"! I will soothe your wounds."}]
execute if entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When battle has made you weary, please come back to see me."}]
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run effect give @a minecraft:regeneration 5 255 true
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run experience set @a 24 levels
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 33

execute if entity @a[scores={click=33..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=19..40}] run tp @s ~ ~-.3 ~ ~80 ~
execute if entity @s[scores={timer=41}] run tp @s 2723 39 2009 0 ~

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] run fill 2724 43 2018 2722 43 2016 minecraft:air
execute if entity @s[scores={timer=41..}] run tag @s add Revisit
execute if entity @s[scores={timer=41..}] run tag @a remove GreatFairy4
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click









