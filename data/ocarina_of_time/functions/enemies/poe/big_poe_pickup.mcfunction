scoreboard players add @s timer 1

execute if block ~ ~1.5 ~ minecraft:air if entity @s[scores={timer=1..100}] run tp @s ~ ~-.3 ~
execute if entity @s[scores={timer=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:player_head,Count:1b,tag:{display:{Name:"\"Lantern\""},SkullOwner:{Id:[I;-949775320,-1155119473,-2078684134,823382637],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFmZDM1ZTMyOWRlZTk4MWNkZDYzNmVlZjVmNWViN2FiN2NhOTM5YjAzOGEyMWNiMWFkMDRlZjgwMjcxNzA0ZCJ9fX0="}]}}}}],HandItems:[{},{}]}

execute unless block ~ ~1.5 ~ minecraft:air run particle minecraft:entity_effect ~ ~1.7 ~ 1 1 0 5 0
execute unless block ~ ~1.5 ~ minecraft:air run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute unless block ~ ~1.5 ~ minecraft:air unless entity @s[tag=Sound] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 .9
execute unless block ~ ~1.5 ~ minecraft:air run tag @s add Sound

execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9] unless entity @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a {"text":"You want to catch the poe, but you don't have an empty bottle."}

execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a ["",{"text":"You caught a Poe! Sell it at the "},{"text":"Ghost Shop ","color":"red"},{"text":"for a lot of money!"}]
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run give @p minecraft:shears{display:{Name:"{\"text\":\"Big Poe\"}"},Unbreakable:1b,Damage:36,HideFlags:63,BottledBigPoe:1b}
#Poes
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe1] run fill 973 64 1947 973 64 1947 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe2] run fill 1053 64 1939 1053 64 1939 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe3] run fill 927 69 2014 927 69 2014 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe4] run fill 843 55 1915 843 55 1915 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe5] run fill 802 59 2049 802 59 2049 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe6] run fill 818 59 2093 818 59 2093 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe7] run fill 955 58 2188 955 58 2188 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe8] run fill 989 65 2082 989 65 2082 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe9] run fill 1001 77 2029 1001 77 2029 minecraft:gold_block
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=BigPoe10] run fill 941 58 2158 941 58 2158 minecraft:gold_block

execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run clear @p minecraft:glass_bottle 1
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9] run kill @s

execute if entity @s[scores={timer=200..}] run kill @s
