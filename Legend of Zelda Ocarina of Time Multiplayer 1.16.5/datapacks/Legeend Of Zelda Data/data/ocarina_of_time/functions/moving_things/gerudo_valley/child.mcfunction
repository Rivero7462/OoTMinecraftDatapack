#Crates
execute unless block 355 76 2040 minecraft:oak_planks run clone 355 72 2040 356 73 2043 355 76 2040
fill 355 76 2048 356 76 2049 minecraft:oak_planks
fill 367 36 2039 368 36 2040 minecraft:oak_planks

#Torch
execute unless block 360 75 2052 minecraft:jungle_fence run clone 360 72 2052 360 73 2052 360 75 2052

#Tent
fill 357 76 2033 347 82 2022 minecraft:air

#Npc's
tp @e[type=armor_stand,tag=Gerudo1] 368 73 2041
tp @e[type=armor_stand,tag=Gerudo2] 366 36 2037
tp @e[tag=Mutoh2] 356 70 2036 0 ~
tp @e[type=cow,tag=GerudoCow] 368 36 2037

#Bridge
fill 367 75 2042 367 73 2040 minecraft:iron_bars[north=true,south=true]
fill 381 72 2040 371 72 2042 minecraft:oak_slab[type=top]
fill 370 67 2040 370 71 2042 minecraft:air
fill 382 67 2042 382 71 2040 minecraft:air
fill 371 72 2040 371 67 2042 minecraft:air replace minecraft:ladder
fill 381 67 2040 381 72 2042 minecraft:air replace minecraft:ladder
fill 370 73 2039 370 79 2039 minecraft:air
fill 370 79 2043 370 73 2043 minecraft:air
fill 376 79 2039 376 72 2039 minecraft:air
fill 376 72 2043 376 79 2043 minecraft:air
fill 382 79 2043 382 73 2043 minecraft:air
fill 382 73 2039 382 79 2039 minecraft:air
fill 384 80 2039 368 80 2043 minecraft:air

#Chest
execute if block 342 76 2062 minecraft:chest run clone 342 76 2062 342 76 2062 342 76 2065 replace move

#Boulders
fill 355 72 2046 355 72 2057 minecraft:air
fill 396 76 2029 397 77 2030 minecraft:air
fill 388 76 2032 389 77 2033 minecraft:air
fill 393 75 2054 394 76 2055 minecraft:air
fill 393 75 2058 394 76 2059 minecraft:air
fill 352 76 2054 353 77 2055 minecraft:air
fill 351 76 2056 352 77 2057 minecraft:air
fill 346 76 2062 347 77 2063 minecraft:air
fill 345 76 2060 346 77 2061 minecraft:air
fill 344 76 2058 345 77 2059 minecraft:air
fill 342 76 2059 343 77 2060 minecraft:air
fill 340 77 2059 341 78 2060 minecraft:air
fill 338 77 2034 339 78 2035 minecraft:air

#Bean Spot
fill 365 35 2039 365 35 2039 minecraft:farmland[moisture=0]
execute if entity @a[x=365,y=36,z=2039,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean4] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 365 36 2039 run function ocarina_of_time:items/magic_bean
execute if block 365 36 2039 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean4] run tag @s add PlantBean4

#Gold Skulltula
execute unless block 366 35 2043 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=364,y=36,z=2038,dx=2,dz=2] run summon minecraft:zombie 365 36 2041 {Tags:["GoldSkull15","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block 366 35 2043 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=364,y=36,z=2038,dx=2,dz=2] run fill 366 35 2043 366 35 2043 minecraft:gold_block
execute unless block 366 35 2043 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=364,y=36,z=2038,dx=2,dz=2] run kill @s
