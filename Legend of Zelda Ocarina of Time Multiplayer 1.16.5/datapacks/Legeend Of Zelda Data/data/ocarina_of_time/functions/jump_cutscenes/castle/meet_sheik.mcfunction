execute unless entity @a[scores={click=0..}] run tp @a 987 11 1394
execute unless entity @a[scores={click=0..}] run fill 988 12 1394 988 12 1394 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @s 993 12 1394
execute unless entity @a[scores={click=0..}] run tag @a remove MeetSheik
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run function ocarina_of_time:music/sheik
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"I've been waiting for you, Hero of Time..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"When evil rules all, an awakening voice from the Sacred Realm will call those destined to be Sages who dwell in the "},{"text":"five temples","color":"red"},{"text":"."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"One in a "},{"text":"deep forest","color":"green"},{"text":"..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"One on a "},{"text":"high mountain","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"One under a "},{"text":"vast lake","color":"blue"},{"text":"..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"One within the "},{"text":"house of the dead","color":"light_purple"},{"text":"..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"One inside a "},{"text":"goddess of the sand","color":"yellow"},{"text":"..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Together with the Hero of Time, the awakened ones will bind the evil and return the light of peace to the world..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"This is the legend of the temples passed down by my people, the "},{"text":"Sheikah","color":"blue"},{"text":"."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"I am "},{"text":"Sheik","color":"red"},{"text":", survivor of the Sheikah..."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"As I see you standing there holding the mythical "},{"text":"Master Sword","color":"aqua"},{"text":", you really do look like the legendary Hero of Time..."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If you believe the legend, you have no choice. You must look for the five temples and awaken the "},{"text":"five Sages","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"One Sage is waiting for the time of awakening in the "},{"text":"Forest Temple","color":"green"},{"text":". The Sage is a girl I am sure you know..."}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Because of the evil power in the temple, she cannot hear the awakening call from the Sacred Realm..."}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Unfortunately, equipped as you currently are, you cannot even enter the temple..."}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"But if you believe what I'm saying, you should head to "},{"text":"Kakariko Village","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Do you understand, "},{"selector":"@p"},{"text":"?"}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34

execute if entity @a[scores={click=34}] run tag @a remove NoOcarina
execute if entity @a[scores={click=34}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=16..}] run scoreboard players set @s lifetime 16
execute if entity @a[scores={click=34}] run function ocarina_of_time:music/temple_of_time
execute if entity @a[scores={click=34}] run fill 986 13 1395 993 12 1393 minecraft:air replace minecraft:barrier
execute if entity @a[scores={click=34}] run scoreboard players set @s text 1
execute if entity @a[scores={click=34}] run tag @a remove MeetSheik2
execute if entity @a[scores={click=34}] run scoreboard objectives remove click
