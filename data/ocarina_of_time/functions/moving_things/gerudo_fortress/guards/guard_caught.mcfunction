kill @e[type=armor_stand,tag=GerudoGuard]
execute as @e[type=armor_stand,tag=PermanentGerudo] run tag @s remove Attack
execute unless entity @a[tag=ThiefCaught] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"Halt! Stay where you are!"}]
execute unless block -111 80 1992 minecraft:gold_block run tellraw @a {"text":"Stupid kid! Get in there and keep quiet!"}
fill -111 80 1992 -111 80 1992 minecraft:gold_block
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_fortress/loot_reset
function ocarina_of_time:teleports/gerudo_fortress/enemies
execute unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/gerudo_valley
execute unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @a[scores={time=13001..23000}] run stopsound @a music
tp @a -108 82 1993.0 -90 ~
tag @a remove ThiefCaught
tag @a remove GerudoCaught
