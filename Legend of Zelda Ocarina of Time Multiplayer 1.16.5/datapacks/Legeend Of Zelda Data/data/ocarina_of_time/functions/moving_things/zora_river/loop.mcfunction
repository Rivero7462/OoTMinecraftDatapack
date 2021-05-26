#River End
execute as @a at @s if entity @s[x=1487,y=68,z=2326,dx=3,dz=1] run tp @s ~ ~ ~.3

#Cucco
execute as @e[type=chicken,tag=RiverCucco1] at @s if block ~ ~ ~ minecraft:water run tag @s add CuccoFly
execute as @e[type=chicken,tag=RiverCucco1] at @s if entity @s[tag=CuccoFly] run scoreboard players add @s lifetime 1
execute as @e[type=chicken,tag=RiverCucco1] at @s if entity @s[scores={lifetime=1..80}] run tp @s ~ ~.5 ~
execute as @e[type=chicken,tag=RiverCucco1] at @s if entity @s[scores={lifetime=81}] run summon minecraft:chicken 1478 69 2318 {Tags:["Cucco","RiverCucco1","Resist"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0}],Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute as @e[type=chicken,tag=RiverCucco1] at @s if entity @s[scores={lifetime=81}] run kill @s

execute as @e[type=chicken,tag=RiverCucco2] at @s if block ~ ~ ~ minecraft:water run tag @s add CuccoFly
execute as @e[type=chicken,tag=RiverCucco2] at @s if entity @s[tag=CuccoFly] run scoreboard players add @s lifetime 1
execute as @e[type=chicken,tag=RiverCucco2] at @s if entity @s[scores={lifetime=1..80}] run tp @s ~ ~.5 ~
execute as @e[type=chicken,tag=RiverCucco2] at @s if entity @s[scores={lifetime=81}] run summon minecraft:chicken 1528 81 2316 {Tags:["Cucco","RiverCucco2","Resist"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0}],Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute as @e[type=chicken,tag=RiverCucco2] at @s if entity @s[scores={lifetime=81}] run kill @s

#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field_morning

#WaterFall
execute if entity @a[x=1605,y=89,z=2285,dx=2,dz=2,nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tag @e[type=area_effect_cloud,tag=Waterfall] add Open
execute as @e[type=area_effect_cloud,tag=Waterfall,tag=Open] run function ocarina_of_time:moving_things/zora_river/waterfall

execute if entity @a[x=1606,y=89,z=2286,dx=0,dz=0] unless block 1612 84 2282 minecraft:gold_block run tellraw @a ["",{"text":"Sleepless Waterfall","color":"blue"},{"text":"\nThe flow of this waterfall serves the king of Hyrule. When the king slumbers, so too do these falls."}]
execute if entity @a[x=1606,y=89,z=2286,dx=0,dz=0] run fill 1612 84 2282 1612 84 2282 minecraft:gold_block

execute if entity @a[x=1610,y=81,z=2283,dx=0,dy=10,dz=6] unless entity @e[type=area_effect_cloud,tag=Waterfall,tag=Open] run tp @a 1607 81 2286 90 ~

#Enemies
function ocarina_of_time:moving_things/zora_river/enemies/enemies

#Bean Guy
tp @e[type=villager,tag=BeanVillager] @e[type=armor_stand,tag=BeanGuy,limit=1]
#1
#summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy1","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
#2
execute if entity @e[type=villager,tag=BeanGuy1,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy2","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy1,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 2
execute if entity @e[type=villager,tag=BeanGuy1,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy1]
#3
execute if entity @e[type=villager,tag=BeanGuy2,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy3","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy2,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 3
execute if entity @e[type=villager,tag=BeanGuy2,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy2]
#4
execute if entity @e[type=villager,tag=BeanGuy3,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy4","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy3,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 4
execute if entity @e[type=villager,tag=BeanGuy3,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy3]
#5
execute if entity @e[type=villager,tag=BeanGuy4,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy5","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:50,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy4,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 5
execute if entity @e[type=villager,tag=BeanGuy4,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy4]
#6
execute if entity @e[type=villager,tag=BeanGuy5,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy6","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:60,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy5,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 6
execute if entity @e[type=villager,tag=BeanGuy5,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy5]
#7
execute if entity @e[type=villager,tag=BeanGuy6,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy7","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lapis_lazuli,Count:14,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy6,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 7
execute if entity @e[type=villager,tag=BeanGuy6,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy6]
#8
execute if entity @e[type=villager,tag=BeanGuy7,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy8","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy7,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 8
execute if entity @e[type=villager,tag=BeanGuy7,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy7]
#9
execute if entity @e[type=villager,tag=BeanGuy8,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy9","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lapis_lazuli,Count:18,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy8,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 9
execute if entity @e[type=villager,tag=BeanGuy8,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy8]
#10
execute if entity @e[type=villager,tag=BeanGuy9,nbt={Offers:{Recipes:[{uses:1}]}}] run summon villager 1507 69 2312 {Tags:["BeanVillager","BeanGuy10","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{maxUses:1,buy:{id:lapis_lazuli,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:scute,Count:1,tag:{display:{Name:"{\"text\":\"Magic Beans\"}"},MagicBean:1b},rewardExp:0b,maxUses:9999999}}]}}
execute if entity @e[type=villager,tag=BeanGuy9,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 10
execute if entity @e[type=villager,tag=BeanGuy9,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy9]
#11
execute if entity @e[type=villager,tag=BeanGuy10,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @e[type=armor_stand,tag=BeanGuy] text 11
execute if entity @e[type=villager,tag=BeanGuy10,nbt={Offers:{Recipes:[{uses:1}]}}] run kill @e[type=villager,tag=BeanGuy10]

#Heart Piece
execute if entity @a[x=1530,y=80,z=2292,dx=1,dz=1] run fill 1531 80 2293 1531 80 2293 minecraft:air
execute if entity @a[x=1592,y=88,z=2280,dx=2,dz=2] run fill 1593 88 2281 1593 88 2281 minecraft:air

#Rocks
fill 1478 68 2317 1484 68 2311 minecraft:grass_block replace minecraft:dirt
fill 1534 80 2312 1538 80 2308 minecraft:grass_block replace minecraft:dirt

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/zora_river/grass

#Adult/Child
execute unless entity @a[x=1532,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1534,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1536,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1530,y=61,z=2311,dx=0,dz=0] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/zora_river/adult
execute unless entity @a[x=1532,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1534,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1536,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1530,y=61,z=2311,dx=0,dz=0] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/zora_river/child

#Owl
execute unless block 1482 67 2326 minecraft:gold_block unless entity @a[tag=Owl6] run kill @e[type=armor_stand,tag=OwlStand6]
execute unless block 1482 67 2326 minecraft:gold_block unless entity @a[tag=Owl6] run fill 1482 67 2326 1482 67 2326 minecraft:gold_block
execute unless block 1482 67 2326 minecraft:gold_block unless block 1483 67 2326 minecraft:gold_block unless entity @e[type=armor_stand,tag=OwlStand6] run summon minecraft:armor_stand 1486 73.5 2326 {Tags:["OwlStand6"],Rotation:[15f],ArmorItems:[{},{},{},{id:infested_stone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}

#Grass
fill 1486 68 2328 1481 68 2326 minecraft:grass_block replace minecraft:dirt

#Grotto
execute if entity @a[x=1478,y=70,z=2311,dx=6,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill 1481 68 2314 1481 68 2314 minecraft:air
execute if entity @a[tag=ShardAgony,x=1478,y=70,z=2311,dx=6,dz=6] run tag @a add ShardAgonyStart
execute unless entity @a[tag=ShardAgony,x=1478,y=70,z=2311,dx=6,dz=6] run tag @a remove ShardAgonyStart
