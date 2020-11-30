execute unless entity @s[tag=Turned] run fill 1389 58 1337 1389 58 1337 minecraft:barrier
execute unless entity @s[tag=Turned] run fill 1388 58 1336 1388 58 1336 minecraft:barrier
execute unless entity @s[tag=Turned] run fill 1389 58 1335 1389 58 1335 minecraft:barrier
execute unless entity @s[tag=Turned] run fill 1390 58 1336 1390 58 1336 minecraft:barrier
execute unless entity @s[tag=Turned] run time set day
execute unless entity @s[tag=Turned] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Turned] run tag @a add StopTime
execute unless entity @s[tag=Turned] run tag @a add NoOcarina
execute unless entity @s[tag=Turned] run tag @a remove RutoSaphire
execute unless entity @s[tag=Turned] unless entity @a[x=1389,y=58,z=1336,dx=0,dz=0] run tp @a 1389 57 1336 -45 ~
execute unless entity @s[tag=Turned] if entity @a[y_rotation=90..180] run tag @s add Turned

execute if entity @s[tag=Turned] unless entity @a[scores={click=0..13}] run scoreboard players add @s timer 1
execute if entity @s[scores={lifetime=15..}] run tp @s 1388 57 1335

#Player Falls
execute if entity @s[tag=Turned,scores={timer=1}] run tp @s 1388 57 1335
execute if entity @s[tag=Turned,scores={timer=1}] run fill 1390 58 1337 1388 58 1335 minecraft:air
execute if entity @s[tag=Turned,scores={timer=1}] run fill 1392 54 1338 1392 54 1338 minecraft:barrier
execute if entity @s[tag=Turned,scores={timer=1}] run fill 1391 54 1339 1391 54 1339 minecraft:barrier
execute if entity @s[tag=Turned,scores={timer=1}] run fill 1390 54 1338 1390 54 1338 minecraft:barrier
execute if entity @s[tag=Turned,scores={timer=1}] run fill 1391 54 1337 1391 54 1337 minecraft:barrier
execute if entity @s[tag=Turned,scores={timer=1}] run fill 1391 52 1338 1391 52 1338 minecraft:barrier
execute if entity @s[tag=Turned,scores={timer=1..20}] at @a run tp @a 1391 ~ 1338 135 ~
#Ruto Moves Under Player
execute if entity @s[tag=Turned,scores={timer=20..30}] run tp @s ~.2 ~ ~.2
execute if entity @s[tag=Turned,scores={timer=31}] run tp @s 1390 57 1337
execute if entity @s[tag=Turned,scores={timer=80..100}] run tp @s ~.2 50 ~.2
execute if entity @s[tag=Turned,scores={timer=90}] run data merge entity @s {NoGravity:1b}
execute if entity @s[tag=Turned,scores={timer=101}] run tp @s 1393 50 1340
execute if entity @s[tag=Turned,scores={timer=105..114}] run tp @s ~ ~.2 ~
execute if entity @s[tag=Turned,scores={timer=115}] run tp @s 1393 53 1340
execute if entity @s[tag=Turned,scores={timer=116..}] run tp @s ~ 53 ~
execute if entity @s[tag=Turned,scores={timer=102..104}] run data merge entity @s {Rotation:[135f]}

#Text
execute if entity @s[tag=Turned,scores={timer=116}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[tag=Turned,scores={timer=116}] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You! You looked cool... Cooler than I though you would, anyway... Just a little!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Well, anyway, you saved me, so I guess I'll reward you."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"What do you wish? Just tell me..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You want the Spiritual Stone of Water, "},{"text":"Zora's Sapphire","color":"blue"},{"text":", don't you?"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"My mother gave it to me and said I should give it only to the man who will be my husband. You might call it the Zora Engagement Ring!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"All right!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I'll give you my most precious possession: Zora's Sapphire!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
#Ruto Gets Stone
execute if entity @s[tag=Turned,scores={timer=125..150}] run tp @s ~.1 53 ~.1
execute if entity @s[tag=Turned,scores={timer=151}] run tp @s 1396 53 1343
execute if entity @s[tag=Turned,scores={timer=151}] run fill 1393 55 1340 1397 58 1344 minecraft:barrier
execute if entity @s[tag=Turned,scores={timer=151}] run fill 1395 56 1342 1395 58 1342 minecraft:air
execute if entity @s[tag=Turned,scores={timer=160}] run data merge entity @s {Rotation:[135f],Pose:{Head:[-30f,0f,0f]}}
execute if entity @s[tag=Turned,scores={timer=170}] run advancement grant @a only minecraft:_gear/zora_sapphire
execute if entity @s[tag=Turned,scores={timer=170}] run summon minecraft:item 1395 56 1342 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Zora's Sapphire\"}"},Unbreakable:1b,Damage:8,HideFlags:63,ZoraSapphire:1b}},Tags:["NoPickup"]}
execute if entity @s[tag=Turned,scores={timer=180}] run scoreboard players set @a click 491

execute if entity @a[scores={click=491}] if entity @s[scores={timer=180..}] run tellraw @a ["",{"text":"You obtained "},{"text":"Zora's Sapphire","color":"blue"},{"text":"! This is the Spiritual Stone of Water passed down by the Zoras!"}]
execute if entity @a[scores={click=491}] if entity @s[scores={timer=180..}] run scoreboard players set @a click 492
execute if entity @a[scores={click=493}] if entity @s[scores={timer=180..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] run tellraw @a {"text":"Her most precious possession? You don't know what she's talking about, but you've finally collected all three Spiritual Stones!"}
execute if entity @a[scores={click=493}] if entity @s[scores={timer=180..}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] run tellraw @a {"text":"Her most precious possession? You don't know what she's talking about, but you've collected two Spiritual Stones! Only one to go!"}
execute if entity @a[scores={click=493}] if entity @s[scores={timer=180..}] run scoreboard players set @a click 494
execute if entity @a[scores={click=495}] if entity @s[scores={timer=180..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] run tellraw @a {"text":"Go back to see Princess Zelda!"}
execute if entity @a[scores={click=495}] if entity @s[scores={timer=180..}] run scoreboard players set @a click 496
execute if entity @a[scores={click=497}] if entity @s[scores={timer=180..}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Don't tell my father..."}]
execute if entity @a[scores={click=497}] if entity @s[scores={timer=180..}] run scoreboard players set @a click 498

execute if entity @a[scores={click=498..}] run tag @a remove StopTime
execute if entity @a[scores={click=498..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=498..}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=12..}] run scoreboard players set @s lifetime 12
execute if entity @a[scores={click=498..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=13..}] run scoreboard players set @s lifetime 13
execute if entity @a[scores={click=498..}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=3..}] run scoreboard players set @s text 3
execute if entity @a[scores={click=498..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=4..}] run scoreboard players set @s text 4
execute if entity @a[scores={click=498..}] run tag @e[type=area_effect_cloud,tag=Progress] add ZoraSapphire
execute if entity @a[scores={click=498..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] run tag @a add RunningMan
execute if entity @a[scores={click=498..}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] run tag @a add ZeldaCastle
execute if entity @a[scores={click=498..}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GoronRuby] run tag @a add ZeldaText
execute if entity @a[scores={click=498..}] run tag @a add DomainChanges
execute if entity @a[scores={click=498..}] run fill 1393 55 1340 1397 58 1344 minecraft:barrier
execute if entity @a[scores={click=498..}] run fill 1390 54 1339 1392 52 1337 minecraft:air replace minecraft:barrier
execute if entity @a[scores={click=498..}] run fill 1393 55 1340 1397 58 1344 minecraft:air
execute if entity @a[scores={click=498..}] run kill @e[type=item,x=1395,y=56,z=1342,dx=0,dz=0]
execute if entity @a[scores={click=498..}] run tp @s 1388 42 1335
execute if entity @a[scores={click=498..}] run scoreboard players set @s timer 0
execute if entity @a[scores={click=498..}] run tag @a remove RutoSaphire2
execute if entity @a[scores={click=498..}] run tag @s remove Turned
execute if entity @a[scores={click=498..}] run scoreboard objectives remove click
