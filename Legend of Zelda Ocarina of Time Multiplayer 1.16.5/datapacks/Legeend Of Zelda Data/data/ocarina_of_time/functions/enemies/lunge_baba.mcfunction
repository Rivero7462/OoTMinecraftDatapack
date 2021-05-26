#Rotation
data modify entity @s Rotation[1] set value 0f

#Attack
execute if entity @a[distance=..6] run tag @s add Attack
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] run scoreboard players add @s timer 1

execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["LungeBabaReset"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=2}] run tp @s ~ ~2 ~
execute unless entity @s[tag=Stun] if entity @s[scores={timer=2}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=3..29}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] run tp @s ^ ^-.5 ^
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50}] run tp @s ^ ^.5 ^2
execute unless entity @s[tag=Stun] if entity @s[scores={timer=52}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:111}}]}

execute unless entity @s[tag=Stun] if entity @s[scores={timer=80}] run tp @s ^ ^ ^-2
execute unless entity @s[tag=Stun] if entity @s[scores={timer=82}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:110}}]}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=82..}] run scoreboard players set @s timer 3

#Shield
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50..55}] if entity @a[distance=..1] unless entity @s[tag=CoolDown] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50..55}] if entity @a[distance=..1] unless entity @s[tag=CoolDown] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50..55}] if entity @a[distance=..1] unless entity @s[tag=CoolDown] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50..55}] if entity @a[distance=..1] run tag @s add CoolDown

#Hide
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @a[distance=..6] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @a[distance=..6] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @a[distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:110}}]}
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @a[distance=..6] run tp @s @e[type=area_effect_cloud,tag=LungeBabaReset,limit=1,sort=nearest]
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @a[distance=..6] run kill @e[type=area_effect_cloud,tag=LungeBabaReset,limit=1,sort=nearest]
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] unless entity @a[distance=..6] run tag @s remove Attack

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .3 .5 .3 1 1
execute if entity @s[nbt={HurtTime:10s},tag=Stun,scores={timer=30..49}] run tp @s ^ ^.5 ^
execute if entity @s[nbt={HurtTime:10s},tag=Stun,scores={timer=50..79}] run tp @s ^ ^ ^-2
execute if entity @s[nbt={HurtTime:10s},tag=Stun] run scoreboard players set @s timer 81
execute if entity @s[nbt={HurtTime:10s},tag=Stun] run scoreboard players set @s lifetime 110
execute if entity @s[scores={lifetime=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s lifetime 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.bat.death hostile @a ~ ~ ~ 1 2
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run playsound minecraft:block.grass.step hostile @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] run playsound minecraft:block.grass.step hostile @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=54}] run playsound minecraft:entity.cat.hiss hostile @a ~ ~ ~ 1 2
