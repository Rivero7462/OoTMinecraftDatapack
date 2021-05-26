#Mouth
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.turtle.egg_crack hostile @a ~ ~ ~ .05 1.7
execute if entity @s[scores={timer=1..2}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=3..4}] run data merge entity @s {Pose:{Head:[0f,0f,-45f]}}
execute if entity @s[scores={timer=4}] run scoreboard players set @s timer 0
#Damage
execute if entity @a[distance=..1] unless entity @s[tag=CoolDown] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..1] unless entity @s[tag=CoolDown] run tag @s add CoolDown
execute if entity @s[tag=CoolDown] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=40..}] run tag @s remove CoolDown
execute if entity @s[scores={GameTimer=40..}] run scoreboard players set @s GameTimer 0
