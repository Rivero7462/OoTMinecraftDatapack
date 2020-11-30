execute unless entity @a[scores={click=0..}] run fill 899 76 946 899 76 946 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 900 76 945 900 76 945 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 898 76 945 898 76 945 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 899 76 944 899 76 944 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 899 75 945
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Are you going to the castle, fairy boy? Would you mind finding my "},{"text":"dad","color":"red"},{"text":"?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" He must have fallen asleep somewhere around the castle. What a thing for an adult to do! Tee hee!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Oh, yeah-if you'll look for him, I'll give this to you."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" I've been incubating this egg very carefully... Tee hee!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"You got a "},{"text":"Weird Egg","color":"red"},{"text":"! Feels like there's something moving inside!"}]
execute if entity @a[scores={click=9}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Weird Egg\"}"},Unbreakable:1b,Damage:34,HideFlags:63,WeirdEgg:1b}
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10}] run tag @a remove NoOcarina
execute if entity @a[scores={click=10}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=4..}] run scoreboard players set @s lifetime 4
execute if entity @a[scores={click=10}] run fill 898 76 944 900 76 946 minecraft:air
execute if entity @a[scores={click=10}] run tag @s add stoptext
execute if entity @a[scores={click=10}] run scoreboard players set @s text 1
execute if entity @a[scores={click=10}] run tag @a remove MeetMalon2
execute if entity @a[scores={click=10}] run tag @a add PocketCucco
execute if entity @a[scores={click=10}] run scoreboard objectives remove click
