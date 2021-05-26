#Found
execute unless entity @s[tag=Attack] if entity @a[x=811,y=63,z=2085,dx=48,dy=9,dz=60] unless entity @a[scores={time=13001..23000}] run tag @s add Attack
#Lost
execute if entity @s[tag=Attack] unless entity @a[x=811,y=63,z=2085,dx=48,dy=9,dz=60] run tag @s remove Attack
execute if entity @a[scores={time=13001..23000}] run tag @s remove Attack

#Up
execute if entity @s[tag=Attack] run tp @s 829 87 2115.8 ~35 ~
execute if entity @s[tag=Attack] run tp @e[type=zombie,tag=SpecialPeahat] 829 87 2115
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1

#Down
execute unless entity @s[tag=Attack] run tp @s 829 66.5 2115
execute unless entity @s[tag=Attack] run tp @e[type=zombie,tag=SpecialPeahat] 829 68.5 2115
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0

#PeahatLarva
execute if entity @s[scores={timer=30}] unless entity @e[type=zombie,tag=PeahatLarva1] run summon minecraft:zombie ~ ~1 ~2 {Tags:["PeahatLarva1","PeahatLarva","Invisible"],IsBaby:1b,ArmorItems:[{},{},{},{id:mushroom_stem,Count:1b,tag:{CustomModelData:1}}],Pose:{Head:[0f,0f,0f]},Silent:1b,NoAI:1b,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/peahat",Attributes:[{Name:"generic.attack_damage",Base:2}]}
execute if entity @s[scores={timer=50}] unless entity @e[type=zombie,tag=PeahatLarva2] run summon minecraft:zombie ~2 ~2 ~ {Tags:["PeahatLarva2","PeahatLarva","Invisible"],IsBaby:1b,ArmorItems:[{},{},{},{id:mushroom_stem,Count:1b,tag:{CustomModelData:1}}],Pose:{Head:[0f,0f,0f]},Silent:1b,NoAI:1b,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/peahat",Attributes:[{Name:"generic.attack_damage",Base:2}]}
execute if entity @s[scores={timer=70}] unless entity @e[type=zombie,tag=PeahatLarva3] run summon minecraft:zombie ~ ~3 ~-2 {Tags:["PeahatLarva3","PeahatLarva","Invisible"],IsBaby:1b,ArmorItems:[{},{},{},{id:mushroom_stem,Count:1b,tag:{CustomModelData:1}}],Pose:{Head:[0f,0f,0f]},Silent:1b,NoAI:1b,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/peahat",Attributes:[{Name:"generic.attack_damage",Base:2}]}
execute if entity @s[scores={timer=90..}] unless entity @e[type=zombie,tag=PeahatLarva] run scoreboard players set @s timer 0

#Kill
execute if entity @s[scores={SlingshotDamage=6..}] run kill @e[type=zombie,tag=SpecialPeahat]
execute if entity @s[scores={SlingshotDamage=6..}] run kill @s

#Sounds
execute if entity @e[type=zombie,tag=SpecialPeahat,nbt={HurtTime:10s}] at @a run scoreboard players add @s SlingshotDamage 1
execute if entity @e[type=zombie,tag=SpecialPeahat,nbt={HurtTime:10s}] at @a run playsound minecraft:entity.endermite.hurt hostile @a ~ ~ ~ .1 .5
