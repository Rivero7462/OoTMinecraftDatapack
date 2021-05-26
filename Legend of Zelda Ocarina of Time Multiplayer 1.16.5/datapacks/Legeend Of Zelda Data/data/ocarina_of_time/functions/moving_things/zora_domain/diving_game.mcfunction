scoreboard players remove @a MiniGameTime 1

execute if entity @a[scores={MiniGameTime=..300}] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[scores={MiniGameTime=..300}] run tag @a add HideDisplayScore
execute if entity @a[scores={MiniGameTime=340}] run function ocarina_of_time:music/minigame
execute if entity @a[scores={MiniGameTime=340}] run scoreboard players set @s text 4
execute if entity @a[scores={MiniGameTime=350}] run tp @a 1755 54 2305 0 0
execute if entity @a[scores={MiniGameTime=300..349}] run tp @a 1755 54 2305

#Barriers
execute if entity @a[scores={MiniGameTime=340}] run fill 1757 55 2311 1757 55 2311 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1758 55 2312 1758 55 2312 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1756 55 2312 1755 55 2312 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1754 55 2311 1754 55 2311 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1752 55 2312 1753 55 2312 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1751 55 2313 1751 55 2313 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1752 55 2314 1752 55 2314 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1753 55 2313 1754 55 2313 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1754 55 2314 1754 55 2314 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1757 55 2313 1757 55 2313 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1758 55 2314 1758 55 2314 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1756 55 2314 1756 55 2314 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1755 55 2315 1755 55 2315 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1757 55 2315 1757 55 2316 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] run fill 1754 55 2316 1754 55 2317 minecraft:barrier

execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1756 55 2317 1756 55 2317 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1758 55 2317 1758 55 2317 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1757 55 2318 1757 55 2319 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1755 55 2318 1755 55 2318 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1754 55 2319 1754 55 2319 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1753 55 2318 1753 55 2318 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1756 55 2320 1756 55 2320 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1755 55 2321 1755 55 2321 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1754 55 2322 1754 55 2322 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1755 55 2323 1755 55 2323 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1756 55 2322 1757 55 2322 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1758 55 2323 1758 55 2323 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1759 55 2322 1759 55 2322 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1758 55 2321 1757 55 2321 minecraft:barrier
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run fill 1758 55 2320 1758 55 2320 minecraft:barrier

execute if entity @a[scores={MiniGameTime=310}] run fill 1758 55 2323 1751 55 2311 minecraft:air replace minecraft:barrier
execute if entity @a[scores={MiniGameTime=310}] run fill 1759 55 2322 1759 55 2322 minecraft:air

#Summon Rupees 1
execute if entity @a[scores={MiniGameTime=340}] unless entity @s[tag=Prize] run summon minecraft:zombie 1757 55 2312 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_1",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] unless entity @s[tag=Prize] run summon minecraft:zombie 1754 55 2312 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_1",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] unless entity @s[tag=Prize] run summon minecraft:zombie 1752 55 2313 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_1",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] unless entity @s[tag=Prize] run summon minecraft:zombie 1757 55 2314 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_1",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] unless entity @s[tag=Prize] run summon minecraft:zombie 1754 55 2315 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_1",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}

#Summon Rupees 2
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1757 55 2312 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1754 55 2312 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1752 55 2313 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1757 55 2314 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1754 55 2315 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1757 55 2317 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1754 55 2318 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1757 55 2320 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1755 55 2322 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}
execute if entity @a[scores={MiniGameTime=340}] if entity @s[tag=Prize] run summon minecraft:zombie 1758 55 2322 {Tags:["Rupee"],CustomName:"\"Rupee\"",DeathLootTable:"ocarina_of_time:entities/diving_game_2",CustomNameVisible:1,NoAI:1b,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,ShowParticles:0b,Duration:1000000}]}

execute as @e[type=armor_stand,tag=FakeRupee] at @s if block ~ ~1.8 ~ minecraft:stone run tp @s ~ ~.1 ~
execute as @e[type=armor_stand,tag=FakeRupee] at @s if block ~.3 ~1.8 ~ minecraft:stone run tp @s ~ ~.5 ~
execute as @e[type=armor_stand,tag=FakeRupee] at @s if block ~-.3 ~1.8 ~ minecraft:stone run tp @s ~ ~.5 ~
execute as @e[type=armor_stand,tag=FakeRupee] at @s if block ~ ~1.8 ~.3 minecraft:stone run tp @s ~ ~.5 ~
execute as @e[type=armor_stand,tag=FakeRupee] at @s if block ~ ~1.8 ~-.3 minecraft:stone run tp @s ~ ~.5 ~
execute if entity @a[scores={MiniGameTime=339}] run kill @e[type=zombie,tag=Rupee]

#Rupee Armor Stands
#Green
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakeGreen"],Invisible:1b,ArmorItems:[{},{},{},{id:lime_dye,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakeGreen"],Invisible:1b,ArmorItems:[{},{},{},{id:lime_dye,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run kill @s
execute as @e[type=armor_stand,tag=FakeGreen] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run give @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b} 1
execute as @e[type=armor_stand,tag=FakeGreen] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run kill @s
#Blue
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakeBlue"],Invisible:1b,ArmorItems:[{},{},{},{id:lapis_lazuli,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakeBlue"],Invisible:1b,ArmorItems:[{},{},{},{id:lapis_lazuli,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run kill @s
execute as @e[type=armor_stand,tag=FakeBlue] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 1
execute as @e[type=armor_stand,tag=FakeBlue] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run kill @s
#Red
execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakeRed"],Invisible:1b,ArmorItems:[{},{},{},{id:red_dye,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakeRed"],Invisible:1b,ArmorItems:[{},{},{},{id:red_dye,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run kill @s
execute as @e[type=armor_stand,tag=FakeRed] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute as @e[type=armor_stand,tag=FakeRed] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run kill @s
#Purple
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakePurple"],Invisible:1b,ArmorItems:[{},{},{},{id:purple_dye,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye",tag:{FakeRupee:1b}}}] at @s if block ~ ~-1 ~ minecraft:stone run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["FakeRupee","FakePurple"],Invisible:1b,ArmorItems:[{},{},{},{id:purple_dye,Count:1b}],NoGravity:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye",tag:{FakeRupee:1b}}}] at @s if entity @a[scores={MiniGameTime=260}] run kill @s
execute as @e[type=armor_stand,tag=FakePurple] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b} 1
execute as @e[type=armor_stand,tag=FakePurple] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run kill @s

execute if entity @a[scores={MiniGameTime=300}] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" START!","color":"red"}]

execute if entity @a[scores={MiniGameTime=0..260}] unless entity @e[type=armor_stand,tag=FakeRupee] run scoreboard players set @a MiniGameTime 0

execute if entity @a[scores={MiniGameTime=0}] run function ocarina_of_time:music/zora_domain
execute if entity @a[scores={MiniGameTime=0}] unless entity @e[type=armor_stand,tag=FakeRupee,x=1749,y=22,z=2308,dx=11,dy=6,dz=18] unless entity @s[tag=Prize] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" Hey! Congratulations! I've got something very nice for you! Come and get it!"}]
execute if entity @a[scores={MiniGameTime=0}] unless entity @e[type=armor_stand,tag=FakeRupee,x=1749,y=22,z=2308,dx=11,dy=6,dz=18] if entity @s[tag=Prize] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" Hey! Congratulations!"}]
execute if entity @a[scores={MiniGameTime=0}] unless entity @e[type=armor_stand,tag=FakeRupee,x=1749,y=22,z=2308,dx=11,dy=6,dz=18] run tag @s add Prize
execute if entity @a[scores={MiniGameTime=0}] if entity @e[type=armor_stand,tag=FakeRupee,x=1749,y=22,z=2308,dx=11,dy=6,dz=18] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" Too Bad! Practice hard and come back!"}]
execute if entity @a[scores={MiniGameTime=0}] as @e[type=armor_stand,tag=FakeRupee,x=1749,y=22,z=2308,dx=11,dy=6,dz=18] run kill @e[type=armor_stand,tag=FakeRupee]

execute if entity @a[scores={MiniGameTime=0}] unless entity @s[tag=Prize] run data merge entity @e[type=villager,tag=DivingZora,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Diving Game\""},DivingGame:1b}},rewardExp:0b}]}}
execute if entity @a[scores={MiniGameTime=0}] if entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=SilverScale] run data merge entity @e[type=villager,tag=DivingZora,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Diving Game\""},DivingGame:1b}},rewardExp:0b}]}}
execute if entity @a[scores={MiniGameTime=0}] if entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=SilverScale] run scoreboard players set @s text 3
execute if entity @a[scores={MiniGameTime=0}] if entity @s[tag=Prize] unless entity @e[type=area_effect_cloud,tag=Progress,tag=SilverScale] run scoreboard players set @s text 2
execute if entity @a[scores={MiniGameTime=0}] unless entity @s[tag=Prize] run scoreboard players set @s text 1
execute if entity @a[scores={MiniGameTime=0}] run tag @a remove DivingGame
