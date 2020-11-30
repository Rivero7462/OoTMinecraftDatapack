#Scores
execute if entity @s[tag=Hurt] run scoreboard players add @s timer 1
execute if entity @s[tag=Attack] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1

#Rotation
data modify entity @s Rotation[1] set value 0f
execute unless entity @s[tag=Stun] unless entity @s[scores={lifetime=1..80}] unless entity @s[tag=Hurt] facing entity @p feet run tp @s ~ 37 ~ ~ 0

#Damaged
execute unless entity @s[scores={lifetime=1..80}] unless entity @e[type=snowball,distance=..2] unless entity @s[tag=Hurt] unless entity @e[type=armor_stand,tag=Bomb] run data merge entity @s {NoAI:0b,Invulnerable:1b}

execute unless entity @s[tag=Hurt] if entity @s[nbt={HurtTime:10s}] run tag @s add Hurt
execute if entity @s[scores={timer=1..25}] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if entity @s[scores={timer=1..25}] run tp @s ~ ~ ~ ~50 0
execute if entity @s[scores={timer=1..25}] if entity @a[distance=..2] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={timer=26..}] run tag @s remove Hurt
execute if entity @s[scores={timer=26..}] run scoreboard players set @s timer 0

#Attack
execute unless entity @s[tag=Hurt] positioned ^ ^ ^2.7 if entity @a[dx=0] run tag @s add Attack
execute unless entity @s[tag=Hurt] positioned ^ ^ ^4.3 if entity @a[dx=0] run tag @s add Attack
execute unless entity @s[tag=Hurt] if entity @s[scores={lifetime=1}] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run replaceitem entity @a weapon.mainhand minecraft:air
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run replaceitem entity @a weapon.offhand minecraft:air
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] run particle minecraft:flame ^ ^.5 ^2.8 .2 .2 .2 0 1 force
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] run particle minecraft:flame ^ ^.5 ^3.8 .2 .2 .2 0 1 force
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] positioned ^ ^ ^2.7 if entity @a[dx=0] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 1 1 true
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] if entity @s[scores={lifetime=25..40}] positioned ^ ^ ^4.3 if entity @a[dx=0] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={lifetime=100..}] run tag @s remove Attack
execute unless entity @s[tag=Attack] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Hurt] run tag @s remove Attack
execute if entity @s[tag=Hurt] run scoreboard players set @s lifetime 0

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .5 .1 .5 1 1
execute if entity @s[scores={time=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={time=110..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Arrow
execute if entity @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..1.5] run tag @s add Stun

#Sounds
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=4}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=6}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 2
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=25}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ .5 .5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ .5 1.3
