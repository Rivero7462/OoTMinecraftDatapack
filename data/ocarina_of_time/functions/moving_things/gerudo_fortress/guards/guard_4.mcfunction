#Always The Same
execute unless entity @s[tag=Kill] unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Kill] run scoreboard players add @s time 1
execute unless entity @s[tag=Kill] if entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
scoreboard players set @s text 1
tp @e[type=zombie,tag=GerudoGuard4] @s

#LifeTime
execute unless block -72 67 1988 minecraft:gold_block unless entity @s[tag=Npc] unless entity @s[tag=Kill] unless entity @s[tag=Stun] unless entity @e[type=zombie,tag=GerudoGuard4] run summon minecraft:zombie -45 77 1992 {Tags:["GerudoGuard","GerudoGuard4","Invisible","Resist","Fire"],PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b}
execute unless entity @s[tag=Kill] unless entity @s[tag=Stun] if entity @s[scores={lifetime=326..}] run kill @e[type=armor_stand,tag=GerudoGuard4]

#Moving
execute unless entity @s[tag=Kill] unless entity @s[tag=Stun] if entity @s[scores={lifetime=1..37}] run tp @s ~ ~ ~ ~5 ~
execute unless entity @s[tag=Kill] unless entity @s[tag=Stun] if entity @s[scores={lifetime=38..112}] run tp @s ~-.08 ~ ~

execute unless entity @s[tag=Kill] unless entity @s[tag=Stun] if entity @s[scores={lifetime=164..199}] run tp @s ~ ~ ~ ~5 ~
execute unless entity @s[tag=Kill] unless entity @s[tag=Stun] if entity @s[scores={lifetime=200..274}] run tp @s ~.08 ~ ~

#Kill
execute if entity @e[type=zombie,tag=GerudoGuard4,nbt={HurtTime:10s}] run tag @s add Kill
execute if entity @s[scores={time=1}] run data merge entity @s {Pose:{Head:[80f,0f,0f],LeftLeg:[-90f,0f,0f],RightLeg:[-90f,0f,0f]}}
execute if entity @s[scores={time=1}] run tp @s ~ ~-.6 ~
execute if entity @s[scores={time=1..}] run particle minecraft:dolphin ~ ~2 ~ .1 .1 .1 0 1 normal

#Stun
execute unless entity @s[tag=Kill] if entity @s[scores={GameTimer=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .2 .1 .2 1 1
execute if entity @s[scores={GameTimer=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s GameTimer 0
