execute unless entity @a[scores={click=0..}] run fill 975 68 1927 975 68 1927 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 976 68 1928 976 68 1928 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 975 68 1929 975 68 1929 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 974 68 1928 974 68 1928 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 975 67 1928
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run tp @s 977 67 1926
execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" You brave lad... We must protect this beautiful land of Hyrule!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Take a good look at that mountain, That is "},{"text":"Death Mountain","color":"red"},{"text":", home of the Gorons. They hold the Spiritual Stone of Fire."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" At the foot of Death Mountain you will find my village, "},{"text":"Kakariko","color":"light_purple"},{"text":". That is where I was born and raised."}]
execute if entity @a[scores={click=5}] run fill 974 68 1929 976 68 1927 minecraft:air
execute if entity @a[scores={click=5}] run tp @a 977 67 1928
execute if entity @a[scores={click=5}] run fill 976 68 1928 976 68 1928 minecraft:barrier
execute if entity @a[scores={click=5}] run fill 978 68 1928 978 68 1928 minecraft:barrier
execute if entity @a[scores={click=5}] run fill 977 68 1927 977 68 1927 minecraft:barrier
execute if entity @a[scores={click=5}] run fill 977 68 1929 977 68 1929 minecraft:barrier
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" You should talk to some of the villagers there before you go up Death Mountain."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" The song I just taught you has some mysterious power. Only Royal Family members are allowed to learn this song."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Remember, it will help to "},{"text":"prove ","color":"red"},{"text":"your connection with the Royal Family."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" The Princess is waiting for you to return to the castle with the stones. All right. We're counting on you!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run particle crit 977 67.5 1926 .5 1 .5 1 1000
execute if entity @a[scores={click=15}] at @a run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2
execute if entity @a[scores={click=15}] run tp @s 978 49 1890
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16

execute if entity @a[scores={click=16..}] run tag @a remove StopStalchildSpawn
execute if entity @a[scores={click=16..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=16..}] run fill 976 68 1929 978 68 1927 minecraft:air
execute if entity @a[scores={click=16..}] run tag @a add NewForestText
execute if entity @a[scores={click=16..}] run tag @a add Owl6

execute if entity @a[scores={click=16..}] run tag @a remove MeetImpa2
execute if entity @a[scores={click=16..}] run scoreboard objectives remove click

execute if entity @a[scores={click=0..13}] run data merge entity @s {Motion:[0.0,0.0,0.0]}
