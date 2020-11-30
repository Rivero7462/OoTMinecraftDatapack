#Cucco Ladder
execute as @e[type=chicken,tag=Cucco,x=1531,y=73,z=1914,dx=0,dz=0] run tp @s 1531 73 1913

#Silver Rock
fill 1560 77 1954 1561 77 1953 minecraft:grass_block

#Anju
execute as @e[type=armor_stand,tag=Anju] if entity @e[type=chicken,x=1533,y=70,z=1952,dx=3,dy=2,dz=5] run function ocarina_of_time:moving_things/kakariko_village/pen
execute as @e[type=armor_stand,tag=Anju] unless entity @e[type=chicken,x=1533,y=70,z=1952,dx=3,dy=2,dz=5] unless entity @a[tag=Adult] run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=Anju] if entity @a[tag=Adult] unless entity @s[tag=NightText] unless block 1538 68 1949 minecraft:gold_block unless block 1542 55 1916 minecraft:gold_block unless block 1538 67 1951 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=Anju] if entity @a[tag=Adult] unless entity @s[tag=NightText] unless block 1538 68 1949 minecraft:gold_block unless block 1542 55 1916 minecraft:gold_block if block 1538 67 1951 minecraft:gold_block run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=Anju] if entity @a[tag=Adult] unless entity @s[tag=NightText] unless block 1538 68 1949 minecraft:gold_block if block 1542 55 1916 minecraft:gold_block run scoreboard players set @s text 3
execute as @e[type=armor_stand,tag=Anju] if entity @a[tag=Adult] if entity @s[tag=NightText] run scoreboard players set @s text 4
execute as @e[type=armor_stand,tag=Anju] if entity @a[tag=Adult] unless entity @s[tag=NightText] if block 1538 68 1949 minecraft:gold_block run scoreboard players set @s text 5

#Windmill
execute unless entity @a[tag=Adult] unless block 1565 43 1937 minecraft:gold_block unless block 1567 43 1937 minecraft:gold_block if entity @a[x=1561,y=49,z=1921,dx=16,dy=4,dz=16] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @a add DrainWell
execute if entity @a[tag=DrainWell] as @e[type=armor_stand,tag=GuruGuru] run function ocarina_of_time:moving_things/kakariko_village/well_drain

execute if entity @a[x=1561,y=49,z=1921,dx=16,dy=4,dz=16] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] unless block 1567 43 1937 minecraft:gold_block run function ocarina_of_time:music/song_of_storms_faster
execute if entity @a[x=1561,y=49,z=1921,dx=16,dy=4,dz=16] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill 1567 43 1937 1567 43 1937 minecraft:gold_block
execute if entity @a[x=1561,y=49,z=1921,dx=16,dy=4,dz=16] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @e[type=armor_stand,tag=GuruGuru] add Faster
execute as @e[type=armor_stand,tag=GuruGuru] at @a if entity @a[tag=InWindmill] run function ocarina_of_time:moving_things/kakariko_village/windmill

#Buff Guy Text
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] unless entity @s[tag=NightText] unless entity @a[tag=Adult] unless block 1529 57 1956 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] unless entity @s[tag=NightText] unless entity @a[tag=Adult] if block 1529 57 1956 minecraft:gold_block run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] if entity @s[tag=NightText] unless entity @a[tag=Adult] unless block 1528 57 1956 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] if entity @s[tag=NightText] unless entity @a[tag=Adult] if block 1528 57 1956 minecraft:gold_block run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] unless entity @s[tag=NightText] if entity @a[tag=Adult] unless block 1527 57 1956 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] unless entity @s[tag=NightText] if entity @a[tag=Adult] if block 1527 57 1956 minecraft:gold_block run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=KakarikoBuffGuy] if entity @s[tag=NightText] if entity @a[tag=Adult] run scoreboard players set @s text 1

#Graves
execute as @a at @s run function ocarina_of_time:moving_things/kakariko_village/graves
execute store result score @e[type=armor_stand,tag=Dampe] GameTimer if entity @e[type=zombie,tag=Poe]
execute as @e[type=armor_stand,tag=FakeBoy] at @a unless entity @a[tag=Adult] if block ~-.5 ~ ~ minecraft:stone_stairs[facing=east] if entity @a[tag=InGraveyard,scores={time=0..13000}] unless block 1611 69 1955 minecraft:gold_block run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"Don't cause trouble! I'll tell Dampe!"}]
execute as @e[type=armor_stand,tag=FakeBoy] at @a unless entity @a[tag=Adult] if block ~-.5 ~ ~ minecraft:stone_stairs[facing=east] if entity @a[tag=InGraveyard,scores={time=0..13000}] unless block 1611 69 1955 minecraft:gold_block run fill 1611 69 1955 1611 69 1955 minecraft:gold_block
execute as @e[type=armor_stand,tag=FakeBoy] at @a unless entity @a[tag=Adult] unless block ~-.5 ~ ~ minecraft:stone_stairs[facing=east] run fill 1611 69 1955 1611 69 1955 minecraft:air
execute as @e[type=armor_stand,tag=FakeBoy] at @a unless entity @a[tag=Adult] if block ~ ~ ~.5 minecraft:stone_stairs[facing=north] if entity @a[tag=InGraveyard,scores={time=0..13000}] unless block 1611 69 1954 minecraft:gold_block run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"Don't cause trouble! I'll tell Dampe!"}]
execute as @e[type=armor_stand,tag=FakeBoy] at @a unless entity @a[tag=Adult] if block ~ ~ ~.5 minecraft:stone_stairs[facing=north] if entity @a[tag=InGraveyard,scores={time=0..13000}] unless block 1611 69 1954 minecraft:gold_block run fill 1611 69 1954 1611 69 1954 minecraft:gold_block
execute as @e[type=armor_stand,tag=FakeBoy] at @a unless entity @a[tag=Adult] unless block ~ ~ ~.5 minecraft:stone_stairs[facing=north] run fill 1611 69 1954 1611 69 1954 minecraft:air

#Dampe Door
execute if entity @a[x=1613,y=71,z=1961,dx=0,dz=0,scores={time=0..13000}] unless block 1611 69 1961 minecraft:gold_block as @e[type=armor_stand,tag=DampeDoor] run tellraw @a ["",{"text":"Dampé: ","color":"gold"},{"text":"Be quiet! It's only morning! I, "},{"text":"Dampé ","color":"red"},{"text":"the gravekeeper, am in bed now! Go away and play! Maybe you can find a ghost in the daytime?"}]
execute if entity @a[x=1613,y=71,z=1961,dx=0,dz=0] run fill 1611 69 1961 1611 69 1961 minecraft:gold_block
execute unless entity @a[x=1613,y=71,z=1961,dx=0,dz=0] run fill 1611 69 1961 1611 69 1961 minecraft:air
execute unless entity @a[scores={time=13001..23000}] unless block 1612 71 1961 minecraft:iron_door run clone 1611 68 1958 1611 69 1958 1612 71 1961
execute if entity @a[scores={time=13001..23000}] unless block 1612 71 1961 minecraft:dark_oak_door run clone 1611 68 1959 1611 69 1959 1612 71 1961

#Navi
execute if entity @a[x=1638,y=77,z=1949,dx=0,dz=1] unless block 1638 75 1950 minecraft:gold_block run tellraw @a {"text":"The crest of the Royal Family of Hyrule is inscribed here."}
execute if entity @a[x=1638,y=77,z=1949,dx=0,dz=1] unless block 1638 75 1950 minecraft:gold_block run fill 1638 75 1950 1638 75 1950 minecraft:gold_block

#Weather
execute as @a positioned 1644 76 1949 if entity @s[distance=..13] run weather rain
execute as @a positioned 1644 76 1949 unless entity @s[distance=..13] unless entity @s[tag=KakarikoSheik2] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Rain] run weather clear

#Sun Tomb Text
execute if entity @a[x=1554,y=51,z=1948,dx=1,dy=2,dz=3] unless entity @a[tag=SunSong2] unless block 1553 49 1949 minecraft:gold_block run tellraw @a {"text":"This poem is dedicated to the memory of the dearly departed members of the Royal Family."}
execute if entity @a[x=1554,y=51,z=1948,dx=1,dy=2,dz=3] run fill 1553 49 1949 1553 49 1949 minecraft:gold_block
execute unless entity @a[x=1554,y=51,z=1948,dx=1,dy=2,dz=3] run fill 1553 49 1949 1553 49 1949 minecraft:air

#Heart Piece Grave
execute if entity @a[x=1595,y=33,z=1953,dx=6,dy=2,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless block 1590 35 1955 minecraft:gold_block run clone 1590 34 1955 1590 34 1955 1598 34 1955
execute if entity @a[x=1595,y=33,z=1953,dx=6,dy=2,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run fill 1590 35 1955 1590 35 1955 minecraft:gold_block

#New Soldier Text
execute if entity @a[tag=KakarikoSoldier] unless block 1481 67 1936 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Guard28,limit=1] text 3
execute if entity @e[type=armor_stand,tag=Guard28,scores={text=3}] run fill 1481 67 1936 1481 67 1936 minecraft:gold_block
execute if block 1481 67 1936 minecraft:gold_block run tag @a remove KakarikoSoldier

#Day/Night People
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] run function ocarina_of_time:moving_things/kakariko_village/people

#Moving People
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] run function ocarina_of_time:moving_things/kakariko_village/moving_people/loop

#Adult to Child
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/kakariko_village/adult
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/kakariko_village/child

#Ghost Dampe
execute as @e[type=armor_stand,tag=Dampe2] at @s run tp @s ~ ~ ~ facing entity @p

#Race
execute as @e[type=armor_stand,tag=Dampe2,tag=Start] at @s if entity @a[distance=..6] run function ocarina_of_time:jump_cutscenes/kakariko_village/dampe_race
execute as @e[type=armor_stand,tag=Dampe2,tag=Start] at @s if entity @a[distance=..12] run function ocarina_of_time:jump_cutscenes/kakariko_village/dampe_race
execute as @e[type=armor_stand,tag=Dampe2,tag=CloseDoor] run scoreboard players add @s lifetime 1
execute as @e[type=armor_stand,tag=Dampe2,tag=FinalDoor] run scoreboard players add @s lifetime 1
execute as @e[type=armor_stand,tag=Dampe2,tag=Start] unless entity @s[scores={timer=1195..}] run scoreboard players add @s GameTimer 1
execute as @e[type=armor_stand,tag=Dampe2,scores={GameTimer=30},tag=Start] at @s run summon minecraft:silverfish ~ ~1 ~ {Tags:["Invisible","Fire"],NoAI:1b,Silent:1,Invulnerable:1}
execute if entity @a[x=1682,y=32,z=2015,dx=0,dz=0] run function ocarina_of_time:moving_things/kakariko_village/race_reset

#Music
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run function ocarina_of_time:teleports/kakariko_village/enemies
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/kakariko_village
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run time add 5
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:kakariko_village

#Enemies
function ocarina_of_time:moving_things/kakariko_village/enemies/enemies
execute unless entity @a[tag=Adult] run fill 1619 73 1962 1619 73 1962 minecraft:air
execute unless entity @a[tag=Adult] run fill 1637 77 1955 1637 77 1955 minecraft:air
execute unless entity @a[tag=Adult] run fill 1621 75 1944 1621 75 1944 minecraft:air

#Torch
execute if entity @e[type=armor_stand,tag=LitTorch,x=1607,y=54,z=1951,dx=0,dz=0] if entity @e[type=armor_stand,tag=LitTorch,x=1607,y=54,z=1949,dx=0,dz=0] unless block 1613 51 1950 minecraft:chest run clone 1613 47 1950 1613 47 1950 1613 51 1950

#Dampe Shop
execute as @e[type=villager,tag=DampeShop] unless entity @a[scores={time=13001..23000}] run kill @s
execute unless entity @e[type=villager,tag=DampeShop] if entity @a[scores={time=13001..23000}] run summon minecraft:villager ~ ~1 ~ {Tags:["DampeShop","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:"lime_dye",Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},maxUses:1,sell:{id:"stone_shovel",Count:1,tag:{display:{Name:"{\"text\":\"1 Dig\"}"}}},rewardExp:false}]}}
tp @e[type=villager,tag=DampeShop] @e[type=armor_stand,tag=Dampe,limit=1]
execute as @e[type=armor_stand,tag=Dampe] at @s if entity @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{display:{Name:"{\"text\":\"1 Dig\"}"}}}]}] run function ocarina_of_time:moving_things/kakariko_village/grave_digging/grave_digging
execute unless block 1627 66 1967 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{Prize:1}}]}] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute unless block 1627 66 1967 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{Prize:1}}]}] run fill 1627 66 1967 1627 66 1967 minecraft:gold_block

#Beggar
tp @e[type=villager,tag=KakarikoBeggar] @e[type=armor_stand,tag=Beggar2,limit=1]
execute as @e[type=villager,tag=KakarikoBeggar,nbt={Offers:{Recipes:[{uses:1}]}}] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute as @e[type=villager,tag=KakarikoBeggar,nbt={Offers:{Recipes:[{uses:1}]}}] run data merge entity @s {Tags:["KakarikoBeggar","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Bottled Bug\"}"},Unbreakable:1b,Damage:2,HideFlags:63,BottledBug:1b}},sell:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}},rewardExp:0b,maxUses:9999999}},{buy:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Fish\"}"},Unbreakable:1b,Damage:3,HideFlags:63,BottledFish:1b}},sell:{id:red_dye,Count:5,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},rewardExp:0b,maxUses:9999999},{buy:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}},sell:{id:purple_dye,Count:3,tag:{Item:1b,display:{Name:"{\"text\":\"Purple Rupee\"}"}}},rewardExp:0b,maxUses:9999999}]}}

#Bazaar
execute as @e[type=item,x=1501,y=66,z=1903,dx=0,dy=1,dz=10] run tp @s 1504 65 1908

#Item Shop
tp @e[type=villager,tag=VillageItemShop] @e[type=armor_stand,tag=ItemShopOwner,limit=1]
execute as @e[type=item,x=1529,y=57,z=1894,dx=0,dz=2] run tp @s 1526 56 1895

#Wake Talon
execute as @e[type=armor_stand,tag=VillageTalonSleep1] at @s unless block 1542 55 1916 minecraft:gold_block if entity @a[distance=..3] if entity @a[nbt={Inventory:[{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cucco\"}"},Unbreakable:1b,Damage:1,HideFlags:63,PocketCucco:1b}}]}] run tag @a add WakeTalonVillage
execute if entity @a[tag=WakeTalonVillage] as @e[type=armor_stand,tag=VillageTalon] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"What in tarnation? Can't a person get a little shut-eye around here?"}]
execute if entity @a[tag=WakeTalonVillage] at @a run playsound minecraft:entity.chicken.hurt ambient @a ~ ~ ~ 1 1
execute if entity @a[tag=WakeTalonVillage] run fill 1542 55 1916 1542 55 1916 minecraft:gold_block
execute if entity @a[tag=WakeTalonVillage] run tag @a remove WakeTalonVillage

#Talon Returns
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=GotEpona] run scoreboard players set @e[type=armor_stand,tag=VillageTalon] text 2
execute if entity @a[tag=TalonReturns] run fill 1541 55 1916 1541 55 1916 minecraft:gold_block

#Mutoh Wife
execute if entity @a[tag=Adult] unless block 1541 56 1925 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=MutohWife] text 1
execute if entity @a[tag=Adult] if block 1541 56 1925 minecraft:gold_block unless block 1541 55 1916 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=MutohWife] text 2
execute if entity @a[tag=ZeldaOcarina] unless entity @a[tag=Adult] run scoreboard players set @e[type=armor_stand,tag=MutohWife] text 3

#Time blocks
execute if entity @a[x=1624,y=42,z=2010,dx=8,dz=6] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1629 43 2013 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1624,y=42,z=2010,dx=8,dz=6] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1624,y=42,z=2010,dx=8,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=1626,y=41,z=2012,dx=2,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1

#Big Fairies
execute positioned 1617 51 1956 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1617 51 1956 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1617 51 1956 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1617 51 1956 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 1617 51 1956 unless entity @a[distance=..5] unless entity @a[x=1624,y=42,z=2010,dx=8,dz=6] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 1617 51 1956 unless entity @a[distance=..5] unless entity @a[x=1624,y=42,z=2010,dx=8,dz=6] run tag @a remove GreenNaviSpot

#Hookshot
execute as @e[type=area_effect_cloud,tag=Hookshot] at @s unless entity @s[scores={Hookshot=200..}] run function ocarina_of_time:moving_things/kakariko_village/hookshot
execute as @e[type=area_effect_cloud,tag=Hookshot,x=1557.8,y=81.5,z=1932.5,dx=1,dy=1.5,dz=1] run tp @s 1558 82.3 1932.2

#Rocks
fill 1513 69 1948 1513 69 1948 minecraft:grass_block replace minecraft:dirt
fill 1601 70 1960 1601 70 1960 minecraft:grass_block replace minecraft:dirt

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/kakariko_village/pots

#Mountain Ring
execute unless entity @a[tag=Adult] if block 1489 148 1779 minecraft:red_concrete run fill 1540 148 1827 1482 148 1770 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult,tag=MountainRing] run fill 1540 148 1827 1482 148 1770 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult] unless entity @a[tag=MountainRing] run fill 1540 148 1827 1482 148 1770 minecraft:red_concrete replace minecraft:smooth_quartz

#Shooting Gallery
execute if entity @a[x=1523,y=48,z=1948,dx=5,dz=7] if entity @a[nbt={Inventory:[{tag:{ShootingGallery:1b}}]}] run tag @a add ShootingGame
execute as @e[type=armor_stand,tag=ShootingGallery2] if entity @a[tag=ShootingGame] run function ocarina_of_time:moving_things/kakariko_village/shooting_gallery/shooting_minigame
execute if entity @a[tag=ShootingGame] run scoreboard players add @a MiniGameTime 1

execute as @e[type=item,x=1522,y=48,z=1948,dx=0,dy=1,dz=7] run tp @s 1523 47 1952
execute as @e[type=item,x=1523,y=49,z=1956,dx=2,dy=1,dz=0] run tp @s 1526 48 1955
execute as @a[x=1525,y=49,z=1956,dx=2,dz=0] at @s run tp @s ~ ~ ~-1

#Potion Shop
execute unless block 1519 50 1911 minecraft:gold_block run data merge entity @e[type=villager,tag=PotionShop,limit=1] {Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Blue Potion\"}"},Unbreakable:1b,Damage:22,HideFlags:63,BluePotion:1b}},rewardExp:0b,maxUses:0}]}}
execute if block 1519 50 1911 minecraft:gold_block run data merge entity @e[type=villager,tag=PotionShop,limit=1] {Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Blue Potion\"}"},Unbreakable:1b,Damage:22,HideFlags:63,BluePotion:1b}},rewardExp:0b,maxUses:9999999}]}}

#Torches
execute if block 1677 74 1950 minecraft:terracotta as @e[type=armor_stand,tag=TempleDoor] store result score @s BlueRupee if entity @e[type=armor_stand,tag=LitTorch,tag=TempleDoor]
execute if block 1677 74 1950 minecraft:terracotta as @e[type=armor_stand,tag=TempleDoor,scores={BlueRupee=24}] run fill 1677 78 1948 1677 73 1952 minecraft:air

#Heart Piece Chest
execute if entity @a[x=1609,y=80,z=1939,dx=2,dz=6] run fill 1608 80 1942 1608 80 1942 minecraft:air

#Cursed Man
execute if entity @a[scores={GoldenSkullToken=10..49}] as @e[type=armor_stand,tag=CursedMan,scores={text=1}] run scoreboard players set @s text 3
execute if entity @a[scores={GoldenSkullToken=10..49}] as @e[type=armor_stand,tag=CursedMan,scores={text=2}] run scoreboard players set @e[type=armor_stand,tag=CursedMan] text 4
execute if entity @a[scores={GoldenSkullToken=50..99}] run scoreboard players set @e[type=armor_stand,tag=CursedMan] text 5
execute if entity @a[scores={GoldenSkullToken=50..99}] run scoreboard players set @e[type=armor_stand,tag=UncursedChild,scores={text=2}] text 3

execute if entity @a[scores={GoldenSkullToken=100..}] run scoreboard players set @e[type=armor_stand,tag=UncursedChild,scores={text=2..3}] text 4
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=100..}] run tp @e[type=armor_stand,tag=UncursedMan] 1493 58 1933
execute if entity @a[scores={GoldenSkullToken=100..}] run kill @e[type=armor_stand,tag=CursedMan]

#Cursed Children
#1
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=10..}] run tp @e[type=armor_stand,tag=UncursedChild1] 1497 58 1926
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=10..}] run kill @e[type=armor_stand,tag=CursedChild1]
#2
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=20..}] run tp @e[type=armor_stand,tag=UncursedChild2] 1497 58 1940
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=20..}] run kill @e[type=armor_stand,tag=CursedChild2]
#3
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=30..}] run tp @e[type=armor_stand,tag=UncursedChild3] 1485 58 1933
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=30..}] run kill @e[type=armor_stand,tag=CursedChild3]
#4
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=40..}] run tp @e[type=armor_stand,tag=UncursedChild4] 1489 58 1940
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=40..}] run kill @e[type=armor_stand,tag=CursedChild4]
#5
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=50..}] run tp @e[type=armor_stand,tag=UncursedChild5] 1489 58 1926
execute unless entity @a[x=1545,y=63,z=1936,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1938,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1547,y=63,z=1944,dx=0,dz=0] unless entity @a[x=1545,y=63,z=1942,dx=0,dz=0] if entity @a[scores={GoldenSkullToken=50..}] run kill @e[type=armor_stand,tag=CursedChild5]

#Grotto
execute if entity @a[tag=ShardAgony,x=1519,y=68,z=1925,dx=4,dz=4] run tag @a add ShardAgonyStart
execute unless entity @a[tag=ShardAgony,x=1519,y=68,z=1925,dx=4,dz=4] run tag @a remove ShardAgonyStart

#Furnaces
execute positioned 1546 59 1926 if entity @a[distance=..8] run clone 1546 59 1925 1546 59 1927 1546 59 1925 replace move
execute positioned 1613 71 1962 if entity @a[distance=..6] run clone 1613 71 1962 1613 71 1962 1613 71 1962 replace move
