scoreboard players add @s timer 1

execute if block ~ ~1.5 ~ minecraft:air if entity @s[scores={timer=1..100}] run tp @s ~ ~-.3 ~
execute if entity @s[scores={timer=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:player_head,Count:1b,tag:{display:{Name:"\"Lantern\""},SkullOwner:{Id:[I;-949775320,-1155119473,-2078684134,823382637],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFmZDM1ZTMyOWRlZTk4MWNkZDYzNmVlZjVmNWViN2FiN2NhOTM5YjAzOGEyMWNiMWFkMDRlZjgwMjcxNzA0ZCJ9fX0="}]}}}}],HandItems:[{},{}]}

execute unless block ~ ~1.5 ~ minecraft:air run particle minecraft:witch ~ ~1.7 ~ 0 0 0 0 1 force @p
execute unless block ~ ~1.5 ~ minecraft:air run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute unless block ~ ~1.5 ~ minecraft:air unless entity @s[tag=Sound] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 .9
execute unless block ~ ~1.5 ~ minecraft:air run tag @s add Sound

execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9] unless entity @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a {"text":"You want to catch the poe, but you don't have an empty bottle."}

execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a {"text":"You caught a Poe!"}
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run give @p minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Poe\"}"},Unbreakable:1b,Damage:4,HideFlags:63,BottledPoe:1b}
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9,nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run clear @p minecraft:glass_bottle 1
execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9] run kill @s
execute if entity @s[scores={timer=200..}] run kill @s
