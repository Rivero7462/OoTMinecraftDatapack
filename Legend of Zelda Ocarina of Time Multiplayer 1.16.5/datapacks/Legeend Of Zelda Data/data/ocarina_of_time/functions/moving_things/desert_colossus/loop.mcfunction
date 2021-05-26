#Leevers
execute at @a unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ #ocarina_of_time:leever unless block ~ ~-2 ~ #ocarina_of_time:leever run tag @a add LeeverAttack
execute at @a if block ~ ~-1 ~ #ocarina_of_time:leever run tag @a remove LeeverAttack
execute at @a if entity @a[y=68,dy=20] run tag @a remove LeeverAttack
execute if entity @a[tag=LeeverAttack] as @e[type=area_effect_cloud,tag=LeeverSpawn] at @s run function ocarina_of_time:moving_things/desert_colossus/leever_spawn

#Secret Fairy Fountain
execute if entity @a[x=358,y=60,z=457,dx=3,dz=3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:moving_things/desert_colossus/fairy_fountain

#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:gerudo_valley

#Slide
execute at @a if entity @a[x=395,y=65,z=378,dx=26,dy=11.5,dz=12] unless block ~ ~-.5 ~ minecraft:smooth_sandstone unless block ~ ~-.5 ~ minecraft:air run tp @a ~ ~ ~1
execute at @a if entity @a[x=395,y=65,z=378,dx=26,dy=11.5,dz=12] unless block ~ ~-.5 ~-.2 minecraft:smooth_sandstone unless block ~ ~-.5 ~-.2 minecraft:air run tp @a ~ ~ ~1
execute at @a if entity @a[x=395,y=65,z=378,dx=26,dy=11.5,dz=12] unless block ~ ~-.5 ~.2 minecraft:smooth_sandstone unless block ~ ~-.5 ~.2 minecraft:air run tp @a ~ ~ ~1
execute at @a if entity @a[x=395,y=65,z=378,dx=26,dy=11.5,dz=12] unless block ~-.2 ~-.5 ~ minecraft:smooth_sandstone unless block ~-.2 ~-.5 ~ minecraft:air run tp @a ~ ~ ~1
execute at @a if entity @a[x=395,y=65,z=378,dx=26,dy=11.5,dz=12] unless block ~.2 ~-.5 ~ minecraft:smooth_sandstone unless block ~.2 ~-.5 ~ minecraft:air run tp @a ~ ~ ~1

#Owl
execute unless block 395 79 383 minecraft:gold_block if entity @a[x=396,y=78,z=386,dx=0,dz=0] run tag @a add OwlSpiritTemple
execute as @e[type=armor_stand,tag=OwlStand12] at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

#Silver Guantlets
execute as @a[nbt={Inventory:[{tag:{SilverGauntlets:1b}}]}] run function ocarina_of_time:moving_things/desert_colossus/gauntlets

#Adult Bean Spot
execute if entity @a[tag=Adult] as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/desert_colossus/bean_spot
execute if entity @a[tag=Adult] run fill 399 54 392 399 54 392 minecraft:terracotta

#Child Bean Spot
execute unless entity @a[tag=Adult] run fill 399 54 392 399 54 392 minecraft:farmland[moisture=0]
execute unless entity @a[tag=Adult] if entity @a[x=399,y=55,z=392,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean3] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 399 55 392 run function ocarina_of_time:items/magic_bean
execute unless entity @a[tag=Adult] if block 399 55 392 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean3] run tag @s add PlantBean3

#Gold Skulltula
execute unless entity @a[tag=Adult] unless block 398 56 389 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=398,y=55,z=391,dx=2,dz=2] run summon minecraft:zombie 397 55 392 {Tags:["GoldSkull92","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @a[tag=Adult] unless block 398 56 389 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=398,y=55,z=391,dx=2,dz=2] run fill 398 56 389 398 56 389 minecraft:gold_block
execute unless entity @a[tag=Adult] unless block 398 56 389 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=398,y=55,z=391,dx=2,dz=2] run kill @s

execute if entity @a[x=420,y=77,z=386,dx=0,dz=0] if block 418 77 384 minecraft:air run clone 421 77 382 421 77 382 418 77 384
