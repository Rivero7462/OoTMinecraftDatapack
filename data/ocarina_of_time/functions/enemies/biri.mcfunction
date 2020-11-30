#Rotation
data modify entity @s Rotation[1] set value 0f

#Find
execute if entity @a[distance=..7] unless entity @s[tag=Stun] run tag @s add Attack
execute unless entity @a[distance=..7] run tag @s remove Attack
execute if entity @s[tag=Stun] run tag @s remove Attack

#Attack
execute if entity @s[tag=Attack] facing entity @p eyes run tp @s ^ ^ ^ ~ 0
execute if entity @s[tag=Attack] if block ^ ^ ^.3 minecraft:air if block ^.3 ^ ^.3 minecraft:air if block ^-.3 ^ ^.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^.05 ~ 0

execute if entity @s[tag=Attack] unless block ^ ^ ^.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^-.1

execute if entity @s[tag=Attack] unless block ^-.3 ^ ^.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^-.1

execute if entity @s[tag=Attack] unless block ^.3 ^ ^.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^-.1

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..110}] unless entity @a[scores={click=0..}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .1 .3 .1 1 1
execute if entity @s[scores={timer=1..110}] unless entity @a[scores={click=0..}] if block ~ ~-.2 ~ minecraft:air run tp @s ~ ~-.3 ~
execute if entity @s[scores={timer=111..}] unless entity @a[scores={click=0..}] run tag @s remove Stun
execute if entity @s[scores={timer=111..}] unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0

#Close
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] run tag @a add Shock
execute if entity @a[distance=..1.8] unless entity @s[tag=Stun] run tp @s ~ ~2 ~

#Death
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run tag @s add Kill
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] unless entity @s[tag=Stun] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] unless entity @s[tag=Stun] run tag @a add Shock

execute if entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Kill] run kill @s
