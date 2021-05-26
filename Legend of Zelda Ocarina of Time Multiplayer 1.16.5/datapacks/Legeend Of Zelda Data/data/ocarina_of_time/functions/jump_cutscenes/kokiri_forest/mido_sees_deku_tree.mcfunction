execute unless entity @a[scores={click=0..}] run fill -539 66 -628 -539 66 -628 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -540 66 -627 -540 66 -627 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -541 66 -628 -541 66 -628 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -540 66 -629 -540 66 -629 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -540 65 -628
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Hey, "},{"selector":"@p"},{"text":"! What did you do?!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" The Great Deku Tree... Did he...die?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" How could you let a thing like that happen?! It's all your fault!"}]
execute if entity @a[scores={click=5..}] run scoreboard players add @s timer 1
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6

execute if entity @s[scores={timer=1..4}] run data merge entity @s {Rotation:[45f]}
execute if entity @s[scores={timer=1..15}] run data merge entity @s {Motion:[-0.1,0.0,0.1]}
execute if entity @s[scores={timer=16..20}] run data merge entity @s {Rotation:[0f]}
execute if entity @s[scores={timer=16..40}] run data merge entity @s {Motion:[0.0,0.0,0.1]}
execute if entity @s[scores={timer=41}] run tp @s ~ 57 ~
execute if entity @s[scores={timer=51..}] run fill -539 66 -627 -541 66 -629 minecraft:air
execute if entity @s[scores={timer=51..}] run data merge entity @s {Rotation:[0f],Pose:{Head:[40f,0f,0f]}}
execute if entity @s[scores={timer=51..}] run tp @s -590 57 -640
execute if entity @s[scores={timer=51..}] run scoreboard players set @s text 3

execute if entity @s[scores={timer=51..}] run tp @e[type=armor_stand,tag=KnowItAllBrother7] -585 65 -632
execute if entity @s[scores={timer=51..}] run fill -585 62 -631 -585 62 -631 minecraft:gold_block
execute if entity @s[scores={timer=51..}] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother7,limit=1] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=51..}] run execute as @e[type=armor_stand,tag=KnowItAllBrother2] at @s run tp @s ~ ~ -623
execute if entity @s[scores={timer=51..}] run tp @e[type=armor_stand,tag=Saria] -631 56 -624
execute if entity @s[scores={timer=51..}] run data merge entity @e[type=armor_stand,tag=Saria,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother2] text 3
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother3] text 3
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother7] text 2
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Fado] text 3
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Twin1] text 3
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Twin2] text 3
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Twin3] text 2
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=FakeTwin3] text 2
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Twin4] text 2
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Twin5] text 2
execute if entity @s[scores={timer=51..}] run scoreboard players set @e[type=armor_stand,tag=Saria] text 0
execute if entity @s[scores={timer=51..}] run fill -612 65 -625 -612 68 -627 minecraft:air

execute if entity @s[scores={timer=51..}] run spawnpoint @a -560 67 -704
execute if entity @s[scores={timer=51..}] run tag @a add SariaGoodBye
execute if entity @s[scores={timer=51..}] run tag @a remove MidoDeadDekuTree
execute if entity @s[scores={timer=51..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=51..}] run scoreboard players set @s timer 0