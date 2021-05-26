execute unless entity @a[scores={click=0..}] run tp @p -546 65 -628
execute unless entity @a[scores={click=0..}] run fill -546 66 -627 -546 66 -627 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -547 66 -628 -547 66 -628 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -546 66 -629 -546 66 -629 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -545 66 -628 -545 66 -628 minecraft:barrier
execute unless entity @a[scores={click=0..}] run data merge entity @e[name=Saria,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tp @s -544 65 -628 90 ~
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" If you want to see the Great Deku Tree, you should at least "},{"text":"equip ","color":"green"},{"text":"a "},{"text":"sword ","color":"red"},{"text":"and a "},{"text":"shield","color":"blue"},{"text":"!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Eh, what's that?!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Oh, you have a "},{"text":"Deku Shield","color":"blue"},{"text":"..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" And what's THAT?!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Is that the "},{"text":"Kokiri Sword","color":"red"},{"text":"?!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" GOOD GRIEF!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Well, even with all that stuff, a wimp is still a wimp, huh?"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" I, the great Mido, will never accept you as one of us!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] unless entity @a[tag=Wait] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Shoot! How did you get to be the favorite of Saria and the Great Deku Tree? Huh?! Grumble...grumble..."}]
execute if entity @a[scores={click=17}] run data merge entity @s {Rotation:[0f]}
execute if entity @a[scores={click=17..}] run fill -543 65 -629 -544 68 -627 minecraft:air
execute if entity @a[scores={click=17}] run tag @a add Wait
execute if entity @a[tag=Wait] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..15}] run data merge entity @s {Motion:[0.0,0.0,0.1]}
execute if entity @s[scores={timer=16..}] run tag @a remove Wait
execute if entity @s[scores={timer=16..}] run scoreboard players set @a click 18

execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run data merge entity @s {Rotation:[115f]}
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run scoreboard players set @s timer 0
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run scoreboard players set @e[type=armor_stand,tag=Saria] text 2
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run tag @s add stoptext
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run scoreboard players set @s text 2
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run tag @a add MeetDekuTree
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run fill -547 66 -629 -545 66 -627 minecraft:air

execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run tag @a remove SwordShield
execute if entity @a[scores={click=18..}] unless entity @a[tag=Wait] run scoreboard objectives remove click