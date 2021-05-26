execute unless entity @a[scores={click=0..}] run fill 2028 128 1312 2028 128 1312 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2027 128 1313 2027 128 1313 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2029 128 1313 2029 128 1313 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2028 128 1314 2028 128 1314 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0
execute unless entity @a[scores={click=0..}] run tp @a 2028 127 1313
execute unless entity @a[scores={click=0..}] run tag @s add Appear
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @s[tag=Appear] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tp @s 2028 127 1305
execute if entity @s[scores={timer=2}] at @a run playsound minecraft:entity.cat.stray_ambient ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=2..15}] run tp @s ~ ~.3 ~ ~80 ~
execute if entity @s[scores={timer=16}] run tag @s remove Appear
execute if entity @s[scores={timer=16}] run tp @s 2028 132 1305 0 ~
execute if entity @s[scores={timer=16}] run scoreboard players set @a click 21
execute if entity @s[scores={timer=16}] run scoreboard players set @s timer 17

#First Appearance
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, "},{"selector":"@p"},{"text":"! I am the Great Fairy of Power!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"I'm going to grant you "},{"text":"magic power","color":"red"},{"text":"."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Receive it now!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tellraw @a ["",{"text":"You learned how to use "},{"text":"magic","color":"red"},{"text":"!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run tag @e[type=area_effect_cloud,tag=Progress] add HalfMagic
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run experience set @a 12 levels
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run effect give @a minecraft:regeneration 5 255 true
execute unless entity @s[tag=Revisit] if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute unless entity @s[tag=Revisit] if entity @a[scores={click=29}] run tellraw @a {"text":"Certain items require magic to be used! You will encounter these items as time goes by."}
execute unless entity @s[tag=Revisit] if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute unless entity @s[tag=Revisit] if entity @a[scores={click=31}] run tellraw @a ["",{"text":"The "},{"text":"magic meter","color":"green"},{"text":" is displayed to the right of your health."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute unless entity @s[tag=Revisit] if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When you use items that require magic, magic power will be consumed. Pay attention to your green "},{"text":"Magic Meter","color":"green"},{"text":"!"}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute unless entity @s[tag=Revisit] if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Hey, boy! You're a messenger of the Royal Family, aren't you? You should visit my friends who live across the land. They'll surely grant you other powers."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute unless entity @s[tag=Revisit] if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Head to "},{"text":"the path leading to Hyrule Castle","color":"red"},{"text":". One of my friends awaits you there, at a dead end in the road."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute unless entity @s[tag=Revisit] if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When battle has made you weary, please come back to see me."}]
execute unless entity @s[tag=Revisit] if entity @a[scores={click=39}] run scoreboard players set @a click 40

#Second Appearance
execute if entity @s[tag=Revisit] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"Welcome, "},{"selector":"@p"},{"text":"! I will soothe your wounds."}]
execute if entity @s[tag=Revisit] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Great Fairy: ","color":"gold"},{"text":"When battle has made you weary, please come back to see me."}]
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run effect give @a minecraft:regeneration 5 255 true
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run experience set @a 24 levels
execute if entity @s[tag=Revisit] if entity @a[scores={click=23}] run scoreboard players set @a click 40

execute if entity @a[scores={click=40..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=19..40}] run tp @s ~ ~-.3 ~ ~80 ~
execute if entity @s[scores={timer=41}] run tp @s 2028 124 1305 0 ~

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=10..}] run scoreboard players set @s lifetime 10
execute if entity @s[scores={timer=41..}] run fill 2029 128 1314 2027 128 1312 minecraft:air
execute if entity @s[scores={timer=41..}] run tag @s add Revisit
execute if entity @s[scores={timer=41..}] run tag @a remove GreatFairy1
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click
