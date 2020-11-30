#Always The Same
scoreboard players add @s lifetime 1
scoreboard players set @s text 1

#LifeTime
execute if entity @s[scores={lifetime=304..}] unless entity @a[tag=Adult] run summon minecraft:armor_stand 1540 76 1936 {Tags:["Carpenter","Sabooro1","Npc"],NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[0f],CustomName:"\"Sabooro\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:2180034}}},{id:"leather_leggings",Count:1,tag:{display:{color:15079802}}},{id:"leather_chestplate",Count:1,tag:{display:{color:2180034}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Sabooro\"}",Id:[I;41952847,-1751692143,-1813366757,-715350283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRiN2YyZDg3MDdmNTcyOWI1M2M5ZTVhZWM0ZGQzZGFjMWIwZmUwNjQ3OGYzYTY0NWE0YjZhODQ2OTM0NTJlNiJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959}
execute if entity @s[scores={lifetime=304..}] run kill @e[type=armor_stand,tag=Sabooro1]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Sabooro1]
#Moving
execute if entity @s[scores={lifetime=1..70}] run tp @s ~ ~ ~.1 0 ~
execute if entity @s[scores={lifetime=71..150}] run tp @s ~-.1 ~ ~ 90 ~
execute if entity @s[scores={lifetime=151..230}] run tp @s ~.1 ~ ~ 270 ~
execute if entity @s[scores={lifetime=231..302}] run tp @s ~ ~ ~-.1 180 ~
execute if entity @s[scores={lifetime=303..}] run tp @s ~ ~ ~ 0 ~
