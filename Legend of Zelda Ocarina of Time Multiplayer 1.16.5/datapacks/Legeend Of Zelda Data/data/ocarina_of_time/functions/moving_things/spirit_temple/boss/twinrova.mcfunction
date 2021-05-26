#Move
execute unless entity @s[tag=Hurt] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=20..21}] facing entity @e[type=area_effect_cloud,tag=TwinrovaSpot,tag=!Cooldown,sort=random] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=25..}] unless entity @s[tag=Shoot] run tp @s ^ ^ ^.5 ~ 0
execute if entity @s[scores={timer=25..}] if entity @e[type=area_effect_cloud,tag=TwinrovaSpot,tag=!Cooldown,distance=..1] run tag @s add Shoot
execute if entity @s[scores={timer=25..}] if entity @s[tag=Shoot] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0

#Shoot
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=2..}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Shoot] unless entity @s[scores={timer=250..}] run scoreboard players set @s timer 250
execute if entity @s[scores={timer=250,lifetime=0}] run tag @s add Fire
execute if entity @s[scores={timer=250,lifetime=1}] run tag @s add Ice

#Fire
execute if entity @s[tag=Fire] if entity @s[scores={timer=270..290}] run particle minecraft:flame ^-4.5 ^-.5 ^1 .1 .1 .1 0 1 normal
execute if entity @s[tag=Fire] if entity @s[scores={timer=291}] run summon minecraft:area_effect_cloud ^-4.5 ^-.5 ^1 {Tags:["Twinrova","FireBeam"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Fire] at @e[type=area_effect_cloud,tag=FireBeam] run particle minecraft:flame ~ ~ ~ .1 .1 .1 0 1 normal
execute if entity @a[tag=ReflectFire] if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] run tag @a add PartFire
execute if entity @a[tag=ReflectFire] if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] run scoreboard players add @s time 1
execute if entity @a[tag=ReflectFire] if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] unless entity @s[scores={GameTimer=81..}] run replaceitem entity @a weapon.offhand minecraft:shield{MirrorShield:1b,display:{Name:"\"Mirror Shield\""},Unbreakable:1b,Damage:4}
execute if entity @a[tag=ReflectFire] if entity @a[nbt={SelectedItem:{tag:{MirrorShield:1b}}}] run tag @a add PartFire
execute if entity @a[tag=ReflectFire] if entity @a[nbt={SelectedItem:{tag:{MirrorShield:1b}}}] run scoreboard players add @s time 1
execute if entity @a[tag=ReflectFire] if entity @a[nbt={SelectedItem:{tag:{MirrorShield:1b}}}] unless entity @s[scores={GameTimer=81..}] run replaceitem entity @a weapon.mainhand minecraft:shield{MirrorShield:1b,display:{Name:"\"Mirror Shield\""},Unbreakable:1b,Damage:4}
execute if entity @a[tag=ReflectFire] unless entity @s[scores={time=3..}] unless entity @s[tag=Hurt] run function ocarina_of_time:moving_things/spirit_temple/boss/reset_2
execute if entity @a[tag=ReflectFire] unless entity @s[scores={time=3..}] unless entity @s[tag=Hurt] run tag @a remove ReflectFire

#Ice
execute if entity @s[tag=Ice] if entity @s[scores={timer=270..290}] run particle minecraft:soul_fire_flame ^4.5 ^-.5 ^1 .1 .1 .1 0 1 normal
execute if entity @s[tag=Ice] if entity @s[scores={timer=291}] run summon minecraft:area_effect_cloud ^4.5 ^-.5 ^1 {Tags:["Twinrova","IceBeam"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Ice] at @e[type=area_effect_cloud,tag=IceBeam] run particle minecraft:soul_fire_flame ~ ~ ~ .1 .1 .1 0 1 normal
execute if entity @a[tag=ReflectIce] if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] run tag @a add PartIce
execute if entity @a[tag=ReflectIce] if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] run scoreboard players add @s time 1
execute if entity @a[tag=ReflectIce] if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] unless entity @s[scores={GameTimer=81..}] run replaceitem entity @a weapon.offhand minecraft:shield{MirrorShield:1b,display:{Name:"\"Mirror Shield\""},Unbreakable:1b,Damage:5}
execute if entity @a[tag=ReflectIce] if entity @a[nbt={SelectedItem:{tag:{MirrorShield:1b}}}] run tag @a add PartIce
execute if entity @a[tag=ReflectIce] if entity @a[nbt={SelectedItem:{tag:{MirrorShield:1b}}}] run scoreboard players add @s time 1
execute if entity @a[tag=ReflectIce] if entity @a[nbt={SelectedItem:{tag:{MirrorShield:1b}}}] unless entity @s[scores={GameTimer=81..}] run replaceitem entity @a weapon.mainhand minecraft:shield{MirrorShield:1b,display:{Name:"\"Mirror Shield\""},Unbreakable:1b,Damage:5}
execute if entity @a[tag=ReflectIce] unless entity @s[scores={time=3..}] unless entity @s[tag=Hurt] run function ocarina_of_time:moving_things/spirit_temple/boss/reset_2
execute if entity @a[tag=ReflectIce] unless entity @s[scores={time=3..}] unless entity @s[tag=Hurt] run tag @a remove ReflectIce

#Reflect
execute if entity @s[scores={time=3..}] run scoreboard players add @s GameTimer 1
execute if entity @a[tag=ReflectFire] if entity @s[scores={GameTimer=30..80}] at @a positioned ^ ^1 ^2 run function ocarina_of_time:moving_things/spirit_temple/boss/fire
execute if entity @a[tag=ReflectIce] if entity @s[scores={GameTimer=30..80}] at @a positioned ^ ^1 ^2 run function ocarina_of_time:moving_things/spirit_temple/boss/ice
execute if entity @s[scores={GameTimer=81}] run tag @a remove PartFire
execute if entity @s[scores={GameTimer=81}] run tag @a remove PartIce
execute if entity @s[scores={GameTimer=81}] if entity @a[nbt={Inventory:[{tag:{MirrorShield:1b,Damage:5}}]}] run function ocarina_of_time:items/mirror_shield/reset
execute if entity @s[scores={GameTimer=81}] if entity @a[nbt={Inventory:[{tag:{MirrorShield:1b,Damage:4}}]}] run function ocarina_of_time:items/mirror_shield/reset
execute if entity @s[scores={GameTimer=81}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=81..}] run scoreboard players set @s time 0
execute if entity @s[scores={GameTimer=81..}] unless entity @s[tag=Hurt] run function ocarina_of_time:moving_things/spirit_temple/boss/reset_2

#Hurt
execute if entity @s[tag=Hurt] run scoreboard players add @s BlueRupee 1
execute if entity @s[scores={BlueRupee=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={BlueRupee=1}] run scoreboard players set @s GameTimer 80
execute if entity @s[scores={BlueRupee=1}] run data merge entity @s {HandItems:[{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:20}},{}]}
execute if entity @s[scores={BlueRupee=1}] run data merge entity @e[type=ravager,tag=TwinrovaHealth,limit=1] {Invulnerable:0b}
execute if entity @s[scores={BlueRupee=1..4}] run tp @s ~ ~-1 ~
execute if entity @s[scores={BlueRupee=100..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset_2

#Damage
execute if entity @e[type=ravager,tag=TwinrovaHealth,nbt={HurtTime:10s}] run scoreboard players add @s BlueRupee2 1
execute if entity @s[scores={BlueRupee2=2..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset_2

#Finish
execute if entity @s[scores={timer=500..}] unless entity @s[tag=Hurt] run function ocarina_of_time:moving_things/spirit_temple/boss/reset_2

#Sounds
execute if entity @s[scores={timer=291}] at @a run playsound minecraft:entity.panda.cant_breed hostile @a ~ ~ ~ 1 2
execute unless entity @s[scores={time=1..}] run scoreboard players set @s ArrowCount 0
execute if entity @s[scores={time=1..}] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=3}] at @a run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={time=1,ArrowCount=18..}] run scoreboard players set @s ArrowCount 0
execute if entity @s[scores={time=2,ArrowCount=12..}] run scoreboard players set @s ArrowCount 0
execute if entity @s[scores={time=3..30,ArrowCount=6..}] run scoreboard players set @s ArrowCount 0
execute if entity @s[scores={GameTimer=30}] at @a run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={BlueRupee=1}] run playsound minecraft:entity.panda.death hostile @a ~ ~ ~ 1 1.5
