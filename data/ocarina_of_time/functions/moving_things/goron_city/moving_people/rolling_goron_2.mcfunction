#Hurt
execute if entity @a[distance=..2] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#Stop
execute if entity @s[tag=Wait] unless entity @s[tag=GoronCutscene] unless entity @s[tag=GoronCutscene2] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" How could you do this to me? You-you're Ganondorf's servant! ","color":"white"},{"text":"Hear my name, and tremble! "},{"text":"I am ","color":"white"},{"selector":"@p","color":"red"},{"text":"! Hero of the Gorons!","color":"white"}]
execute if entity @s[tag=Wait] run tag @s add GoronCutscene

#Cooldown
execute if entity @s[tag=Cooldown] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=10..}] run tag @s remove Cooldown
execute if entity @s[scores={lifetime=10..}] run scoreboard players reset @s lifetime

#Cooldown2
execute if entity @s[tag=Cooldown2] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Cooldown3] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=20..}] run tag @s remove Cooldown2
execute if entity @s[scores={GameTimer=20..}] run tag @s remove Cooldown3
execute if entity @s[scores={GameTimer=20..}] run scoreboard players reset @s GameTimer

#Change Directions
execute positioned ^ ^ ^2 if entity @a[distance=..4] unless entity @s[tag=Reverse] run tag @s add Cooldown3
execute positioned ^ ^ ^2 if entity @a[distance=..4] unless entity @s[tag=Reverse] unless entity @s[tag=Cooldown2] run scoreboard players add @s timer 1
execute positioned ^ ^ ^2 if entity @a[distance=..4] unless entity @s[tag=Reverse] unless entity @s[tag=Cooldown2] run tag @s add Reverse
execute positioned ^ ^ ^2 if entity @a[distance=..4] if entity @s[tag=Reverse] run tag @s add Cooldown2
execute positioned ^ ^ ^2 if entity @a[distance=..4] if entity @s[tag=Reverse] unless entity @s[tag=Cooldown3] run scoreboard players remove @s timer 1
execute positioned ^ ^ ^2 if entity @a[distance=..4] if entity @s[tag=Reverse] unless entity @s[tag=Cooldown3] run tag @s remove Reverse

#Moving
execute unless entity @s[scores={timer=-100..}] run scoreboard players set @s timer 4
execute unless entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=AdultGoron,distance=..0.2] unless entity @s[tag=Cooldown] run scoreboard players remove @s timer 1
execute unless entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=AdultGoron,distance=..0.2] run tag @s add Cooldown
execute if entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=AdultGoron,distance=..0.2] unless entity @s[tag=Cooldown] run scoreboard players add @s timer 1
execute if entity @s[tag=Reverse] if entity @e[type=area_effect_cloud,tag=AdultGoron,distance=..0.2] run tag @s add Cooldown

execute if entity @s[scores={timer=7..}] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=..0}] run scoreboard players set @s timer 6

execute unless entity @s[tag=Wait] if entity @s[scores={timer=1}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=AdultGoron1,limit=1]
execute unless entity @s[tag=Wait] if entity @s[scores={timer=2}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=AdultGoron2,limit=1]
execute unless entity @s[tag=Wait] if entity @s[scores={timer=3}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=AdultGoron3,limit=1]
execute unless entity @s[tag=Wait] if entity @s[scores={timer=4}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=AdultGoron4,limit=1]
execute unless entity @s[tag=Wait] if entity @s[scores={timer=5}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=AdultGoron5,limit=1]
execute unless entity @s[tag=Wait] if entity @s[scores={timer=6}] run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=AdultGoron6,limit=1]
