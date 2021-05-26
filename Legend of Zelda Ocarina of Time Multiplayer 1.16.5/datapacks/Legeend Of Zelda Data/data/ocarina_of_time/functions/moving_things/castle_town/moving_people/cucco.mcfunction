#Always The Same
scoreboard players add @s lifetime 1

#LifeTime
execute if entity @s[scores={lifetime=830..}] run summon minecraft:chicken 880 70 1415 {Tags:["CastleCucco"],Rotation:[0f],NoAI:0b,Attributes:[{Name:"generic.movement_speed",Base:0}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1}
execute if entity @s[scores={lifetime=830..}] run kill @s

#Moving
execute if entity @s[scores={lifetime=1..15}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=16..66}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=67..71}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=72..95}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
#Stop 1
execute if entity @s[scores={lifetime=125..139}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=140..153}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=154..193}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=194..223}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=224..227}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
#Stop 2
execute if entity @s[scores={lifetime=257..271}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=272..300}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=301..310}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=311..320}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=321..339}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=340..352}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=353..356}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=357..381}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
#Stop 3
execute if entity @s[scores={lifetime=411..415}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=416..460}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=461..500}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=501..510}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=511..536}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
#Stop 4
execute if entity @s[scores={lifetime=566..570}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=571..578}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=579..584}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=585..599}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=600..620}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=621..634}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=635..659}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=660..668}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=669..707}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
























