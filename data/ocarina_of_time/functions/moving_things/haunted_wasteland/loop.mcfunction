#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:gerudo_valley

#Quicksand
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta unless entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] run tp @s ~ ~-.1 ~
execute as @a at @s if block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=north] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~ ~ ~-.5 minecraft:air run tp @s ~ ~ ~-.1
execute as @a at @s if block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=south] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~ ~ ~.5 minecraft:air run tp @s ~ ~ ~.1
execute as @a at @s if block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=east] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~.5 ~ ~ minecraft:air run tp @s ~.1 ~ ~
execute as @a at @s if block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=west] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~-.5 ~ ~ minecraft:air run tp @s ~-.1 ~ ~
execute as @a at @s if block ~ ~-1.1 ~ minecraft:light_blue_glazed_terracotta[facing=north] unless block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=north] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~ ~ ~-.5 minecraft:air run tp @s ~ ~ ~-.1
execute as @a at @s if block ~ ~-1.1 ~ minecraft:light_blue_glazed_terracotta[facing=south] unless block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=south] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~ ~ ~.5 minecraft:air run tp @s ~ ~ ~.1
execute as @a at @s if block ~ ~-1.1 ~ minecraft:light_blue_glazed_terracotta[facing=east] unless block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=east] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~.5 ~ ~ minecraft:air run tp @s ~.1 ~ ~
execute as @a at @s if block ~ ~-1.1 ~ minecraft:light_blue_glazed_terracotta[facing=west] unless block ~ ~-.1 ~ minecraft:light_blue_glazed_terracotta[facing=west] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if block ~-.5 ~ ~ minecraft:air run tp @s ~-.1 ~ ~

#Shop
execute if entity @a[nbt={Inventory:[{tag:{Product:1b}}]}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bombchu (10)\"}"},Unbreakable:1b,HideFlags:63,BombchuPickup:1b,PickupItem:1b,BombchuPickup10:1b,Item:1b}
execute if entity @a[nbt={Inventory:[{tag:{Product:1b}}]}] run tellraw @a ["",{"text":"Carpet Master:","color":"gold"},{"text":" Thank you very much! What I'm selling is..."},{"text":"Bombchu","color":"red"},{"text":"! The mark that will lead you to the "},{"text":"Spirit Temple ","color":"yellow"},{"text":"is the "},{"text":"flag on the left","color":"red"},{"text":" outside the shop. Be seeing you!"}]
execute if entity @a[nbt={Inventory:[{tag:{Product:1b}}]}] run data merge entity @e[type=villager,tag=CarpetShop,limit=1] {Offers:{Recipes:[{buy:{id:red_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Product\""}},Product:1b,rewardExp:0b,maxUses:1}}]}}
execute if entity @a[nbt={Inventory:[{tag:{Product:1b}}]}] run clear @a minecraft:paper

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/haunted_wasteland/pots

#Torches
execute unless block 2003 39 243 minecraft:gold_block if entity @e[tag=HauntedTorch1,tag=LitTorch] if entity @e[tag=HauntedTorch2,tag=LitTorch] run clone 2003 38 244 2003 38 244 2003 31 244
execute unless block 2003 39 243 minecraft:gold_block if entity @e[tag=HauntedTorch1,tag=LitTorch] if entity @e[tag=HauntedTorch2,tag=LitTorch] run fill 2003 39 243 2003 39 243 minecraft:gold_block

#Plaque
execute unless block 2005 55 244 minecraft:gold_block positioned 2005 57 244 if entity @a[distance=..2] run tellraw @a ["",{"text":"One with the ","color":"white"},{"text":"eye of truth","color":"red"},{"text":" shall be guided to the Spirit Temple by an inviting ghost."}]
execute positioned 2005 57 244 if entity @a[distance=..2] run fill 2005 55 244 2005 55 244 minecraft:gold_block
execute positioned 2005 57 244 unless entity @a[distance=..2] run fill 2005 55 244 2005 55 244 minecraft:air

#Phantom Guide
execute if entity @a[x=2002,y=56,z=237,dx=9,dy=2,dz=14] if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run tag @e[type=armor_stand,tag=PhantomGuide,tag=!Start] add Start
execute as @e[type=armor_stand,tag=PhantomGuide,tag=!Start] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=PhantomGuide,tag=Start] at @s run function ocarina_of_time:moving_things/haunted_wasteland/phantom_guide
execute as @e[type=armor_stand,tag=PhantomGuide,tag=Start] at @s run function ocarina_of_time:moving_things/haunted_wasteland/phantom_guide

#Leevers
execute if entity @a[x=1956,y=52,z=162,dx=85,dy=3,dz=45] run tag @a add LeeverAttack
execute unless entity @a[x=1956,y=52,z=162,dx=85,dy=3,dz=45] run tag @a remove LeeverAttack
execute if entity @a[tag=LeeverAttack] as @e[type=area_effect_cloud,tag=LeeverSpawn] at @s run function ocarina_of_time:moving_things/haunted_wasteland/leever_spawn

#Adult/Child
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/haunted_wasteland/adult
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/haunted_wasteland/child
