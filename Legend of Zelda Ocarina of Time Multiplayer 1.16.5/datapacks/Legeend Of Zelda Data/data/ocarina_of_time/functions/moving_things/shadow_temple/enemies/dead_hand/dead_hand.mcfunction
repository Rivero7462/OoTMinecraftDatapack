scoreboard players add @s timer 1
execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] run tp @s ~ 92 ~

execute unless entity @s[tag=Run] if entity @s[scores={timer=8..10}] run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}
execute unless entity @s[tag=Run] if entity @s[scores={timer=8..10}] run tag @s remove Lunge
execute unless entity @s[tag=Run] if entity @s[scores={timer=8..10}] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^.08 ~ 0
execute unless entity @s[tag=Run] if entity @s[scores={timer=11..20}] run scoreboard players set @s timer 8

execute unless entity @s[tag=Run] if entity @a[distance=..3] unless entity @s[scores={timer=26..}] unless entity @s[scores={lifetime=300..}] run scoreboard players set @s timer 26

#Head
execute unless entity @s[tag=Run] if entity @s[scores={timer=31..}] unless entity @a[distance=..4] unless entity @s[scores={lifetime=300..}] run scoreboard players set @s timer 8
execute unless entity @s[tag=Run] if entity @s[scores={timer=31..}] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute if entity @s[scores={timer=31}] run data merge entity @s {Pose:{Head:[-87f,0f,0f]}}
execute if entity @s[scores={timer=32}] run data merge entity @s {Pose:{Head:[-84f,0f,0f]}}
execute if entity @s[scores={timer=33}] run data merge entity @s {Pose:{Head:[-81f,0f,0f]}}
execute if entity @s[scores={timer=34}] run data merge entity @s {Pose:{Head:[-78f,0f,0f]}}
execute if entity @s[scores={timer=35}] run data merge entity @s {Pose:{Head:[-75f,0f,0f]}}
execute if entity @s[scores={timer=36}] run data merge entity @s {Pose:{Head:[-72f,0f,0f]}}
execute if entity @s[scores={timer=37}] run data merge entity @s {Pose:{Head:[-69f,0f,0f]}}
execute if entity @s[scores={timer=38}] run data merge entity @s {Pose:{Head:[-66f,0f,0f]}}
execute if entity @s[scores={timer=39}] run data merge entity @s {Pose:{Head:[-63f,0f,0f]}}
execute if entity @s[scores={timer=40}] run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute if entity @s[scores={timer=41}] run data merge entity @s {Pose:{Head:[-57f,0f,0f]}}
execute if entity @s[scores={timer=42}] run data merge entity @s {Pose:{Head:[-54f,0f,0f]}}
execute if entity @s[scores={timer=43}] run data merge entity @s {Pose:{Head:[-51f,0f,0f]}}
execute if entity @s[scores={timer=44}] run data merge entity @s {Pose:{Head:[-48f,0f,0f]}}
execute if entity @s[scores={timer=45}] run data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
execute if entity @s[scores={timer=46}] run data merge entity @s {Pose:{Head:[-42f,0f,0f]}}
execute if entity @s[scores={timer=47}] run data merge entity @s {Pose:{Head:[-39f,0f,0f]}}
execute if entity @s[scores={timer=48}] run data merge entity @s {Pose:{Head:[-36f,0f,0f]}}
execute if entity @s[scores={timer=49}] run data merge entity @s {Pose:{Head:[-33f,0f,0f]}}
execute if entity @s[scores={timer=50}] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if entity @s[scores={timer=51}] run data merge entity @s {Pose:{Head:[-27f,0f,0f]}}
execute if entity @s[scores={timer=52}] run data merge entity @s {Pose:{Head:[-24f,0f,0f]}}
execute if entity @s[scores={timer=53}] run data merge entity @s {Pose:{Head:[-21f,0f,0f]}}
execute if entity @s[scores={timer=54}] run data merge entity @s {Pose:{Head:[-18f,0f,0f]}}
execute if entity @s[scores={timer=55}] run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute if entity @s[scores={timer=56}] run data merge entity @s {Pose:{Head:[-12f,0f,0f]}}
execute if entity @s[scores={timer=57}] run data merge entity @s {Pose:{Head:[-9f,0f,0f]}}
execute if entity @s[scores={timer=58}] run data merge entity @s {Pose:{Head:[-6f,0f,0f]}}
execute if entity @s[scores={timer=59}] run data merge entity @s {Pose:{Head:[-3f,0f,0f]}}
execute if entity @s[scores={timer=60}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=60}] run tag @s add Lunge

#Lunge
execute unless entity @s[tag=Run] if entity @s[scores={timer=70}] if block ^ ^ ^1 minecraft:air facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^1 ~ 0
execute unless entity @s[tag=Run] if entity @s[scores={timer=71..79}] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Run] if entity @s[scores={timer=95..100}] run scoreboard players set @s timer 69

#Run
execute if entity @s[tag=Run] unless entity @s[scores={timer=110..}] run scoreboard players set @s timer 110
execute if entity @s[scores={timer=110}] run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}
execute if entity @s[scores={timer=110}] run tag @s remove Lunge
execute facing 25 59 1363 rotated ~ 0 if entity @s[scores={timer=110..113}] run tp @s ^ ^ ^.05 ~ 0
execute rotated ~ 0 if entity @s[scores={timer=118..155}] run tp @s ^ ^ ^.05 ~ 0

execute if entity @s[scores={timer=156}] run particle minecraft:block minecraft:dirt ~ 91 ~ 1 2 1 1 500 normal
execute if entity @s[scores={timer=156}] positioned ~ ~-1 ~ if entity @a[distance=..4] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={timer=158}] run tp @s 1600 86 925
execute if entity @s[scores={timer=160}] run tag @s remove Attack
execute if entity @s[scores={timer=160}] run tag @s remove Lunge
execute if entity @s[scores={timer=160}] run tag @s remove Run
execute if entity @s[scores={timer=160}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={timer=160}] run scoreboard players set @s timer 0

#Hide
execute if entity @s[scores={timer=8..11}] run scoreboard players add @s lifetime 1
execute unless entity @s[scores={timer=8..11}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={lifetime=300..}] unless entity @s[scores={timer=155..}] run tag @s add Run
execute if entity @s[scores={lifetime=300..}] unless entity @s[scores={timer=155..}] run scoreboard players set @s timer 155

#Sounds
execute if entity @s[scores={lifetime=1}] run playsound minecraft:entity.ravager.ambient hostile @a ~ ~ ~ 1 .5

execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] run playsound minecraft:block.gravel.fall hostile @a ~ ~ ~ 1 .5
execute unless entity @s[tag=Run] if entity @s[scores={timer=3}] run playsound minecraft:block.gravel.fall hostile @a ~ ~ ~ 1 .5
execute unless entity @s[tag=Run] if entity @s[scores={timer=5}] run playsound minecraft:block.gravel.fall hostile @a ~ ~ ~ 1 .5

execute if entity @s[scores={timer=156}] run playsound minecraft:block.gravel.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=158}] run playsound minecraft:block.gravel.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=160}] run playsound minecraft:block.gravel.fall hostile @a ~ ~ ~ 1 .5
