#Rotation
data modify entity @s Rotation[1] set value 0f

#Find
execute positioned ~-3 ~-30 ~-3 if entity @a[dx=6,dy=50,dz=6] run tag @s add Attack
#Lose
execute positioned ~-6 ~-30 ~-6 unless entity @a[dx=12,dy=50,dz=12] unless entity @s[tag=Stun] run tag @s remove Attack

#Spin
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run tp @s ~ ~ ~ ~10 ~

#Close
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] run tag @a add Shock

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=1..100}] unless entity @a[scores={click=0..}] run particle minecraft:falling_dust blue_wool ~ ~2 ~ .1 .3 .3 1 1
execute if entity @s[scores={timer=111}] run tp @s ~ ~1 ~
execute if entity @s[scores={timer=111}] run tag @s remove Stun
execute if entity @s[scores={timer=111}] run scoreboard players set @s timer 0

#Death
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run scoreboard players add @s lifetime 1
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] unless entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 1.5
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] unless entity @s[tag=Stun] run tag @a add Shock
execute if entity @s[scores={lifetime=2}] run tag @s add Kill
