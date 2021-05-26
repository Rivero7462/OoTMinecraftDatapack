execute if entity @s[scores={time=13001..23000}] run tag @s add PocketCuccoStart

execute if entity @s[tag=PocketCuccoStart] unless entity @a[scores={time=13001..23000}] run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" Look! A ","color":"aqua"},{"text":"cucco "},{"text":"hatched from the ","color":"aqua"},{"text":"egg "},{"text":"you were incubating! It's the miracle of life!","color":"aqua"}]
execute if entity @s[tag=PocketCuccoStart] unless entity @a[scores={time=13001..23000}] run clear @s minecraft:shears{WeirdEgg:1b}
execute if entity @s[tag=PocketCuccoStart] unless entity @a[scores={time=13001..23000}] run give @s minecraft:shears{display:{Name:"{\"text\":\"Cucco\"}"},Unbreakable:1b,Damage:1,HideFlags:63,PocketCucco:1b}
execute if entity @s[tag=PocketCuccoStart] unless entity @a[scores={time=13001..23000}] run tag @s remove PocketCuccoStart
