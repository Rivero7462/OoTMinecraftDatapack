#Scores
execute if entity @s[tag=Attack] run scoreboard players add @s lifetime 1
execute if entity @e[type=area_effect_cloud,tag=PeahatReturn] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1

#Seen
execute if entity @a[distance=..10] unless entity @a[scores={time=13001..23000}] run tag @s add Attack
execute if entity @s[scores={lifetime=1..2}] run tp @s ~ ~2.5 ~

#Hide
execute unless entity @s[tag=Stun] unless entity @a[distance=..12] run tag @s remove Attack
execute unless entity @s[tag=Stun] if entity @a[scores={time=13001..23000}] run tag @s remove Attack

execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] if entity @e[type=area_effect_cloud,tag=PeahatReturn] if block ~ ~-1 ~ #ocarina_of_time:peahat unless block ~ ~-2 ~ #ocarina_of_time:peahat facing entity @e[type=area_effect_cloud,tag=PeahatReturn,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^.1 rotated as @s run tp @s ~ ~ ~ ~4 ~
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] if entity @e[type=area_effect_cloud,tag=PeahatReturn] unless block ~ ~-1 ~ #ocarina_of_time:peahat run tp @s ~ ~1 ~
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] if entity @e[type=area_effect_cloud,tag=PeahatReturn] if block ~ ~-2 ~ #ocarina_of_time:peahat if block ~ ~-1 ~ #ocarina_of_time:peahat run tp @s ~ ~-1 ~
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] if entity @e[type=area_effect_cloud,tag=PeahatReturn] as @e[type=zombie,tag=Peahat,distance=..1.5] at @s run tp @s ~ ~ ~ ~4 25

execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] positioned ~ ~-5 ~ if entity @e[type=area_effect_cloud,tag=PeahatReturn,distance=..0.1] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] positioned ~ ~-5 ~ at @e[type=area_effect_cloud,tag=PeahatReturn,distance=..0.1] run tp @s ~ ~ ~
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] positioned ~ ~-5 ~ at @e[type=area_effect_cloud,tag=PeahatReturn,distance=..0.1] run tp @e[type=zombie,tag=Peahat,sort=nearest,limit=1] ~ ~2.5 ~ ~ 0
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] positioned ~ ~-5 ~ as @e[type=area_effect_cloud,tag=PeahatReturn,distance=..0.1] run kill @s
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] if entity @s[scores={lifetime=1..}] unless entity @e[type=area_effect_cloud,tag=PeahatReturn] run scoreboard players set @s lifetime 0

#Attack
execute unless entity @s[tag=Stun] if entity @s[tag=Attack,scores={lifetime=5..}] unless entity @a[distance=..3.5] if block ~ ~-1 ~ #ocarina_of_time:peahat unless block ~ ~-2 ~ #ocarina_of_time:peahat facing entity @p feet rotated ~ 0 positioned ^ ^ ^.1 rotated as @s run tp @s ~ ~ ~ ~4 ~
execute unless entity @s[tag=Stun] if entity @s[tag=Attack,scores={lifetime=5..}] if entity @a[distance=..3.5] if block ~ ~-1 ~ #ocarina_of_time:peahat unless block ~ ~-2 ~ #ocarina_of_time:peahat facing entity @p feet rotated ~ 0 positioned ^ ^ ^ rotated as @s run tp @s ~ ~ ~ ~4 ~
execute unless entity @s[tag=Stun] if entity @s[tag=Attack,scores={lifetime=5..}] unless block ~ ~-1 ~ #ocarina_of_time:peahat run tp @s ~ ~1 ~
execute unless entity @s[tag=Stun] if entity @s[tag=Attack,scores={lifetime=5..}] if block ~ ~-2 ~ #ocarina_of_time:peahat if block ~ ~-1 ~ #ocarina_of_time:peahat run tp @s ~ ~-1 ~
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] as @e[type=zombie,tag=Peahat,distance=..1.5] at @s run tp @s ~ ~ ~ ~4 25

#Hurt
execute unless entity @e[type=area_effect_cloud,tag=PeahatReturn] run data merge entity @e[type=zombie,tag=Peahat,limit=1,sort=nearest] {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=PeahatReturn] run data merge entity @e[type=zombie,tag=Peahat,limit=1,sort=nearest] {Invulnerable:0b}
execute positioned ^ ^-1 ^2 if entity @a[distance=..2.5] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#Slingshot
execute as @e[type=zombie,tag=Peahat] at @s if entity @e[type=snowball,distance=..5] run effect give @s minecraft:resistance 1 1 true
execute as @e[type=zombie,tag=Peahat] at @s if entity @e[type=snowball,distance=..5] run effect give @s minecraft:instant_health 1 0 true

#Stun
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~5 ~ 1 .1 1 1 1
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Sounds
execute if entity @s[scores={lifetime=1}] run playsound minecraft:block.gravel.break hostile @a ~ ~ ~ 1 .5
execute unless entity @s[tag=Stun] if entity @s[scores={GameTimer=1}] run playsound minecraft:item.shovel.flatten hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={GameTimer=2}] run scoreboard players set @s GameTimer 0
execute unless entity @e[type=area_effect_cloud,tag=PeahatReturn] run scoreboard players set @s GameTimer 0
execute if entity @e[type=zombie,tag=Peahat,nbt={HurtTime:10s}] run playsound minecraft:entity.endermite.hurt hostile @a ~ ~ ~ 2 .5

#Spin
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run data merge entity @s {Pose:{Head:[25f,0f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=2}] run data merge entity @s {Pose:{Head:[24f,3.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=3}] run data merge entity @s {Pose:{Head:[23f,7.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=4}] run data merge entity @s {Pose:{Head:[22f,10.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=5}] run data merge entity @s {Pose:{Head:[21f,14.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=6}] run data merge entity @s {Pose:{Head:[20f,18f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=7}] run data merge entity @s {Pose:{Head:[19f,21.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=8}] run data merge entity @s {Pose:{Head:[18f,25.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=9}] run data merge entity @s {Pose:{Head:[17f,28.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=10}] run data merge entity @s {Pose:{Head:[16f,32.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=11}] run data merge entity @s {Pose:{Head:[15f,36f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=12}] run data merge entity @s {Pose:{Head:[14f,39.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=13}] run data merge entity @s {Pose:{Head:[13f,43.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=14}] run data merge entity @s {Pose:{Head:[12f,46.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=15}] run data merge entity @s {Pose:{Head:[11f,50.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=16}] run data merge entity @s {Pose:{Head:[10f,54f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=17}] run data merge entity @s {Pose:{Head:[9f,57.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=18}] run data merge entity @s {Pose:{Head:[8f,61.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=19}] run data merge entity @s {Pose:{Head:[7f,64.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=20}] run data merge entity @s {Pose:{Head:[6f,68.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=21}] run data merge entity @s {Pose:{Head:[5f,72f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=22}] run data merge entity @s {Pose:{Head:[4f,75.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=23}] run data merge entity @s {Pose:{Head:[3f,79.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=24}] run data merge entity @s {Pose:{Head:[2f,82.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=25}] run data merge entity @s {Pose:{Head:[1f,86.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=26}] run data merge entity @s {Pose:{Head:[0f,90f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=27}] run data merge entity @s {Pose:{Head:[-1f,93.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=28}] run data merge entity @s {Pose:{Head:[-2f,97.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=29}] run data merge entity @s {Pose:{Head:[-3f,100.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] run data merge entity @s {Pose:{Head:[-4f,104.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=31}] run data merge entity @s {Pose:{Head:[-5f,108f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=32}] run data merge entity @s {Pose:{Head:[-6f,111.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=33}] run data merge entity @s {Pose:{Head:[-7f,115.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=34}] run data merge entity @s {Pose:{Head:[-8f,118.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=35}] run data merge entity @s {Pose:{Head:[-9f,122.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=36}] run data merge entity @s {Pose:{Head:[-10f,126f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=37}] run data merge entity @s {Pose:{Head:[-11f,129.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=38}] run data merge entity @s {Pose:{Head:[-12f,133.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=39}] run data merge entity @s {Pose:{Head:[-13f,136.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=40}] run data merge entity @s {Pose:{Head:[-14f,140.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=41}] run data merge entity @s {Pose:{Head:[-15f,144f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=42}] run data merge entity @s {Pose:{Head:[-16f,147.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=43}] run data merge entity @s {Pose:{Head:[-17f,151.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=44}] run data merge entity @s {Pose:{Head:[-18f,154.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=45}] run data merge entity @s {Pose:{Head:[-19f,158.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=46}] run data merge entity @s {Pose:{Head:[-20f,162f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=47}] run data merge entity @s {Pose:{Head:[-21f,165.6f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=48}] run data merge entity @s {Pose:{Head:[-22f,169.2f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=49}] run data merge entity @s {Pose:{Head:[-23f,172.8f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50}] run data merge entity @s {Pose:{Head:[-24f,176.4f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=51..}] run data merge entity @s {Pose:{Head:[-25f,180f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=51..}] run scoreboard players set @s timer 1
