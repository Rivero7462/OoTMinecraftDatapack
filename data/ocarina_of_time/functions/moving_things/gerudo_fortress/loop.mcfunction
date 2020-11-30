#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:gerudo_valley

#Guards
function ocarina_of_time:moving_things/gerudo_fortress/guards/loop

#Locked Doors
#1
execute positioned -115 43 1994 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 1)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned -115 43 1994 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 1)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -115 43 1994 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 1)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Thieves' Hideout 1)"} destroy
#2
execute positioned -41 43 1967 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 2)\""}}}]} run function ocarina_of_time:items/locked_door/east_iron
execute positioned -41 43 1967 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 2)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -41 43 1967 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 2)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Thieves' Hideout 2)"} destroy
#3
execute positioned -89 38 1979 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 3)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned -89 38 1979 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 3)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -89 38 1979 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 3)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Thieves' Hideout 3)"} destroy
#4
execute positioned -139 44 1929 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 4)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned -139 44 1929 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 4)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -139 44 1929 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 4)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Thieves' Hideout 4)"} destroy

#Carpenter
#Ichiro
execute if entity @a[x=-106,y=43,z=2000,dx=0,dz=2] run function ocarina_of_time:moving_things/gerudo_fortress/ichiro/thief
execute if entity @a[x=-119,y=43,z=1995,dx=0,dz=2] run function ocarina_of_time:moving_things/gerudo_fortress/ichiro/thief
execute unless block -109 39 2003 minecraft:gold_block if block -110 39 2003 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run function ocarina_of_time:music/dodongo_cavern
execute if block -110 39 2003 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run fill -109 39 2003 -109 39 2003 minecraft:gold_block
execute as @e[type=armor_stand,tag=Ichiro4,tag=Run] at @s run function ocarina_of_time:moving_things/gerudo_fortress/ichiro/run
execute if block -109 39 2003 minecraft:gold_block run tag @e[type=armor_stand,tag=Ichiro4,tag=!Run] add Npc
execute unless block -109 39 2003 minecraft:gold_block run kill @e[type=item,nbt={Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 1)\""}}}}]

#Jiro
execute if entity @a[x=-49,y=44,z=1956,dx=3,dz=0] run function ocarina_of_time:moving_things/gerudo_fortress/jiro/thief
execute if entity @a[x=-49,y=43,z=1981,dx=0,dz=2] run function ocarina_of_time:moving_things/gerudo_fortress/jiro/thief
execute unless block -47 39 1970 minecraft:gold_block if block -47 39 1969 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run function ocarina_of_time:music/dodongo_cavern
execute if block -47 39 1969 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run fill -47 39 1970 -47 39 1970 minecraft:gold_block
execute as @e[type=armor_stand,tag=Jiro4,tag=Run] at @s run function ocarina_of_time:moving_things/gerudo_fortress/jiro/run
execute if block -47 39 1970 minecraft:gold_block run tag @e[type=armor_stand,tag=Jiro4,tag=!Run] add Npc
execute unless block -47 39 1970 minecraft:gold_block run kill @e[type=item,nbt={Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 2)\""}}}}]

#Sabooro
execute if entity @a[x=-93,y=39,z=1984,dx=0,dz=3] run function ocarina_of_time:moving_things/gerudo_fortress/sabooro/thief
execute if entity @a[x=-79,y=39,z=1984,dx=0,dz=3] run function ocarina_of_time:moving_things/gerudo_fortress/sabooro/thief
execute unless block -84 34 1985 minecraft:gold_block if block -85 34 1985 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run function ocarina_of_time:music/dodongo_cavern
execute if block -85 34 1985 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run fill -84 34 1985 -84 34 1985 minecraft:gold_block
execute as @e[type=armor_stand,tag=Sabooro4,tag=Run] at @s run function ocarina_of_time:moving_things/gerudo_fortress/sabooro/run
execute if block -84 34 1985 minecraft:gold_block run tag @e[type=armor_stand,tag=Sabooro4,tag=!Run] add Npc
execute unless block -84 34 1985 minecraft:gold_block run kill @e[type=item,nbt={Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 3)\""}}}}]

#Shiro
execute if entity @a[x=-133,y=44,z=1947,dx=3,dz=0] run function ocarina_of_time:moving_things/gerudo_fortress/shiro/thief
execute unless block -134 40 1937 minecraft:gold_block if block -135 40 1937 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run function ocarina_of_time:music/dodongo_cavern
execute if block -135 40 1937 minecraft:gold_block unless entity @e[type=zombie,tag=GerudoThief] run fill -134 40 1937 -134 40 1937 minecraft:gold_block
execute as @e[type=armor_stand,tag=Shiro4,tag=Run] at @s run function ocarina_of_time:moving_things/gerudo_fortress/shiro/run
execute if block -134 40 1937 minecraft:gold_block run tag @e[type=armor_stand,tag=Shiro4,tag=!Run] add Npc
execute unless block -134 40 1937 minecraft:gold_block run kill @e[type=item,nbt={Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Thieves' Hideout 4)\""}}}}]

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/gerudo_fortress/pots

#Open Gate
execute as @e[type=armor_stand,tag=PermanentGerudo4,tag=OpenGate] run function ocarina_of_time:moving_things/gerudo_fortress/open_gate

#Horse Archery
execute as @a at @e[type=horse,tag=NoRideHorse] if entity @s[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tp @s ~ ~ ~
tp @e[type=villager,tag=HorseArcheryShop] @e[type=armor_stand,tag=PermanentGerudo5,limit=1]
execute unless entity @a[scores={time=13001..23000}] run tp @e[type=horse,tag=GerudoHorse] -39 101 1887 0 ~
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=HorseArchery] run tp @e[type=armor_stand,tag=PermanentGerudo5] -34 101 1887
execute if entity @a[scores={time=13001..23000}] run tp @e[type=horse,tag=GerudoHorse] -39 95 1887 0 ~
execute if entity @a[scores={time=13001..23000}] run tp @e[type=armor_stand,tag=PermanentGerudo5] -34 97 1887
execute if entity @a[tag=HorseArchery] run tp @e[type=armor_stand,tag=PermanentGerudo5] -34 97 1887
execute at @a if entity @e[type=horse,tag=Epona,distance=..4] run data merge entity @e[type=villager,tag=HorseArcheryShop,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:arrow,Count:1,tag:{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},sell:{id:arrow,Count:1,tag:{display:{Name:"\"Horse Archery\""},HorseArchery:1b,Unbreakable:1b,Damage:9,HideFlags:63,NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},rewardExp:0b}]}}
execute at @a if entity @e[type=horse,tag=Epona,distance=..4] run scoreboard players set @e[type=armor_stand,tag=PermanentGerudo5] text 2
execute at @a unless entity @e[type=horse,tag=Epona,distance=..4] run data merge entity @e[type=villager,tag=HorseArcheryShop,limit=1] {Offers:{Recipes:[{maxUses:0,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:arrow,Count:1,tag:{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},sell:{id:arrow,Count:1,tag:{display:{Name:"\"Horse Archery\""},HorseArchery:1b,Unbreakable:1b,Damage:9,HideFlags:63,NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},rewardExp:0b}]}}
execute at @a unless entity @e[type=horse,tag=Epona,distance=..4] run scoreboard players set @e[type=armor_stand,tag=PermanentGerudo5] text 1
#Start
execute if entity @a[nbt={Inventory:[{tag:{HorseArchery:1b}}]}] run tag @a add HorseArchery
execute as @e[type=horse,tag=Epona] at @s if entity @a[tag=HorseArchery] run function ocarina_of_time:moving_things/gerudo_fortress/horse_archery/loop

#Training Ground
execute if entity @a[nbt={Inventory:[{tag:{OpenTrainingGround:1b}}]}] run scoreboard players set @e[type=armor_stand,tag=PermanentGerudo1] text 2
execute if entity @a[nbt={Inventory:[{tag:{OpenTrainingGround:1b}}]}] run fill -52 70 1996 -54 72 1996 minecraft:air
execute if entity @a[nbt={Inventory:[{tag:{OpenTrainingGround:1b}}]}] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"All right, I'll take your 10 Rupees. Give it your best shot!"}]
execute if entity @a[nbt={Inventory:[{tag:{OpenTrainingGround:1b}}]}] run clear @a minecraft:paper{OpenTrainingGround:1b}

#Scarecrow Spot
execute if entity @a[x=-76,y=94,z=1954,dx=5,dz=7] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -88 94 1960 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=-76,y=94,z=1954,dx=5,dz=7] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=-76,y=94,z=1954,dx=5,dz=7] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=-76,y=94,z=1954,dx=5,dz=7] run tag @a remove GreenNaviSpot
execute if entity @a[x=-76,y=94,z=1954,dx=5,dz=7] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand -88 91.8 1960 {Tags:["ScarecrowSpot"],Rotation:[-90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Grotto
execute if entity @a[x=-71,y=71,z=1984,dx=6,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill -68 69 1987 -68 69 1987 minecraft:air
execute if entity @a[tag=ShardAgony,x=-71,y=71,z=1984,dx=6,dz=6] run tag @a add ShardAgonyStart
execute unless entity @a[tag=ShardAgony,x=-71,y=71,z=1984,dx=6,dz=6] run tag @a remove ShardAgonyStart

#Gold Skulltula
execute unless entity @a[scores={time=13001..23000}] run tp @e[type=zombie,tag=GoldSkull90] -143 98 1895
execute if entity @a[scores={time=13001..23000}] run tp @e[type=zombie,tag=GoldSkull90] -143 109 1895

#Captured Without Hookshot
execute if entity @a[x=-111,y=83,z=1988,dx=6,dz=9] unless entity @a[nbt={Inventory:[{tag:{Hookshot:1b}}]}] run kill @a
