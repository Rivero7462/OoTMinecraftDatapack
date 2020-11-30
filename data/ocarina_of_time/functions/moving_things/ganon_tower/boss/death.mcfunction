scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run stopsound @a music
execute if entity @s[scores={timer=1}] run fill -498 92 1617 -499 92 1617 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -500 92 1618 -500 92 1618 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -499 92 1619 -498 92 1619 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -497 92 1618 -497 92 1618 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a -498.0 91 1618 180 ~
execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @s -498.0 90.7 1613 0 ~
execute if entity @s[scores={timer=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,30f,0f],LeftArm:[-30f,20f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[50f,20f,0f]}}

execute if entity @s[scores={timer=10}] run tp @s -498.0 90.7 1613 0 ~
execute if entity @s[scores={timer=20}] run tp @s -498.0 90.7 1613 0 ~
execute if entity @s[scores={timer=20}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"The Great King of Evil Ganondorf...beaten by this kid?"}]
execute if entity @s[scores={timer=100}] run particle minecraft:falling_dust lime_wool ~ ~1.5 ~.3 0.1 0.05 0 1 10
execute if entity @s[scores={timer=110}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"selector":"@p"},{"text":"...!"}]

execute if entity @s[scores={timer=160}] run tp @s -498.0 91 1613 0 ~
execute if entity @s[scores={timer=160}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={timer=160}] run data merge entity @s {Pose:{Head:[-70f,0f,0f],RightArm:[-160f,0f,-20f],LeftArm:[-160f,0f,20f],RightLeg:[0f,0f,20f],LeftLeg:[0f,0f,-20f]}}
execute if entity @s[scores={timer=165..}] run fill -499 113 1615 -498 113 1615 minecraft:air
execute if entity @s[scores={timer=165..}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.4 0.2 0 10
execute if entity @s[scores={timer=185..}] run particle minecraft:block orange_stained_glass -510 97 1616.0 0 5 5 0 10
execute if entity @s[scores={timer=185..}] run particle minecraft:block orange_stained_glass -498.0 97 1627 5 5 0 0 10
execute if entity @s[scores={timer=185..}] run particle minecraft:block orange_stained_glass -487 97 1616.0 0 5 5 0 10
execute if entity @s[scores={timer=185..}] run particle minecraft:block orange_stained_glass -498.0 97 1604 5 5 0 0 10
execute if entity @s[scores={timer=250..}] run tp @a -490 112 1615
execute if entity @s[scores={timer=270..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=270..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=270..}] run function ocarina_of_time:teleports/ganon_castle/loot_reset
execute if entity @s[scores={timer=270..}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[scores={timer=250..}] run tag @a add EscapeCastle
execute if entity @s[scores={timer=270..}] run tag @a add EscapeGanonCastle
execute if entity @s[scores={timer=270..}] run spawnpoint @a -638 91 909
execute if entity @s[scores={timer=270..}] run tp @a -638 91 909 180 ~
execute if entity @s[scores={timer=270..}] run fill -498 113 1615 -498 113 1615 minecraft:gold_block
execute if entity @s[scores={timer=270..}] run scoreboard players set @s timer 0
