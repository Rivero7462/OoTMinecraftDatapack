#Fire Temple Enterance
clone 2677 26 1947 2675 28 1943 2673 38 1938

#Rupees
execute unless block 2668 33 1925 minecraft:gold_block unless block 2668 37 1924 minecraft:chest run clone 2668 33 1924 2668 33 1924 2668 37 1924
execute if block 2668 37 1924 minecraft:chest{Items:[]} run fill 2668 33 1925 2668 33 1925 minecraft:gold_block
execute if block 2668 37 1924 minecraft:chest unless block 2668 37 1924 minecraft:chest{Items:[]} run fill 2668 33 1925 2668 33 1925 minecraft:air

execute unless block 2678 33 1911 minecraft:gold_block unless block 2679 35 1911 minecraft:dispenser run clone 2679 33 1911 2679 33 1911 2679 35 1911
execute if block 2679 35 1911 minecraft:dispenser{Items:[]} run fill 2678 33 1911 2678 33 1911 minecraft:gold_block
execute if block 2679 35 1911 minecraft:dispenser unless block 2679 35 1911 minecraft:dispenser{Items:[]} run fill 2678 33 1911 2678 33 1911 minecraft:air

fill 2697 35 1910 2697 35 1910 minecraft:air
kill @e[type=item,x=2697,y=35,z=1910,dx=0,dz=0]

#Bean Spot
fill 2687 36 1944 2687 36 1944 minecraft:farmland[moisture=0]
execute if entity @a[x=2687,y=37,z=1944,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean2] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 2687 37 1944 run function ocarina_of_time:items/magic_bean
execute if block 2687 37 1944 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean2] run tag @s add PlantBean2

#Rupee Convert
execute if block 2720 43 1962 minecraft:air run clone 2722 42 1962 2722 42 1962 2720 43 1962
tp @e[type=villager,tag=CraterConvert] 2720 42 1962

#Crate
fill 2728 56 1960 2727 56 1961 minecraft:oak_planks

#Gold Skulltula
execute unless block 2691 38 1948 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=2686,y=37,z=1943,dx=2,dz=2] run summon minecraft:zombie 2687 37 1946 {Tags:["GoldSkull57","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block 2691 38 1948 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=2686,y=37,z=1943,dx=2,dz=2] run fill 2691 38 1948 2691 38 1948 minecraft:gold_block
execute unless block 2691 38 1948 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=2686,y=37,z=1943,dx=2,dz=2] run kill @s
