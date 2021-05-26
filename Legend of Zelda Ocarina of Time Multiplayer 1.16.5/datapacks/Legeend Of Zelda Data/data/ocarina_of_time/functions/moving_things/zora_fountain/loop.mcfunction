#Adult
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/zora_fountain/adult

#Child
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/zora_fountain/child

#Ice Platforms
execute as @e[type=armor_stand,tag=IcePlatform] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/zora_fountain/ice
execute as @a at @s if block ~ ~ ~ minecraft:packed_ice run tp @s 1442 53 1293
execute as @a at @s if block ~ ~1 ~ minecraft:packed_ice run tp @s 1442 53 1293

#Jabu Eyes
execute as @e[type=area_effect_cloud,tag=JabuJabu] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/zora_fountain/blink

#Flowers
execute unless entity @a[tag=MeetJabuJabu2] run function ocarina_of_time:moving_things/zora_fountain/flowers

#Secret
execute if block 1398 66 1346 minecraft:oak_button[powered=true] unless block 1399 57 1356 minecraft:gold_block run give @a player_head{display:{Name:"{\"text\":\"Talon Sleeping\"}"},SkullOwner:{Id:[I;1051019153,-1741274412,-1532941598,-1741860382],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Y4YjgxZjE3ODk2ZWU3MWMwYjM1YzI4NDdiODZiNmRkMTRhOTRlZGNlMmZjMDg2MmM5NmQ0ZWE5ZWVmNTAifX19"}]}},SecretMask:1b}
execute if block 1398 66 1346 minecraft:oak_button[powered=true] run fill 1399 57 1356 1399 57 1356 minecraft:gold_block

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/zora_fountain/pots

#Great Fairy Fountain
execute if entity @a[x=1451,y=54,z=1392,dx=0,dz=0] unless block 1451 52 1392 minecraft:gold_block run tellraw @a {"text":"The crest of the Royal Family of Hyrule is inscribed here."}
execute if entity @a[x=1451,y=54,z=1392,dx=0,dz=0] unless block 1451 52 1392 minecraft:gold_block run fill 1451 52 1392 1451 52 1392 minecraft:gold_block

#Enemies
function ocarina_of_time:moving_things/zora_fountain/enemies/enemies

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

#Scarecrow Spot
execute if entity @a[tag=Adult] positioned 1400 55 1323 if entity @a[distance=..15] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1401 62 1322 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] positioned 1400 55 1323 if entity @a[distance=..15] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] positioned 1400 55 1323 unless entity @a[distance=..15] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] positioned 1400 55 1323 unless entity @a[distance=..15] run tag @a remove GreenNaviSpot
execute if entity @a[tag=Adult] positioned 1400 55 1323 if entity @a[distance=..15] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand 1401 59.8 1322 {Tags:["ScarecrowSpot"],Rotation:[45f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Red Rupee
execute unless block 1416 59 1319 minecraft:gold_block if entity @a[x=1415,y=61,z=1320,dx=0,dz=0] run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute unless block 1416 59 1319 minecraft:gold_block if entity @a[x=1415,y=61,z=1320,dx=0,dz=0] run fill 1416 59 1319 1416 59 1319 minecraft:gold_block
