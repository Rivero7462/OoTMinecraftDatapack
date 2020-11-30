#Ichiro
execute if entity @s[scores={text=1}] run data merge entity @s {CustomName:"\"Ichiro\""}
execute if entity @s[tag=Ichiro4] unless entity @a[scores={click=0..}] run tp @a -111 42 1996
execute if entity @s[tag=Ichiro4] unless entity @a[scores={click=0..}] run fill -111 43 1995 -111 43 1995 minecraft:barrier
execute if entity @s[tag=Ichiro4] unless entity @a[scores={click=0..}] run fill -112 43 1996 -112 43 1996 minecraft:barrier
execute if entity @s[tag=Ichiro4] unless entity @a[scores={click=0..}] run fill -111 43 1997 -111 43 1997 minecraft:barrier
execute if entity @s[tag=Ichiro4] unless entity @a[scores={click=0..}] run fill -110 43 1996 -110 43 1996 minecraft:barrier
#Jiro
execute if entity @s[scores={text=2}] run data merge entity @s {CustomName:"\"Jiro\""}
execute if entity @s[tag=Jiro4] unless entity @a[scores={click=0..}] run tp @a -43 42 1963
execute if entity @s[tag=Jiro4] unless entity @a[scores={click=0..}] run fill -42 43 1963 -42 43 1963 minecraft:barrier
execute if entity @s[tag=Jiro4] unless entity @a[scores={click=0..}] run fill -43 43 1962 -43 43 1962 minecraft:barrier
execute if entity @s[tag=Jiro4] unless entity @a[scores={click=0..}] run fill -43 43 1964 -43 43 1964 minecraft:barrier
execute if entity @s[tag=Jiro4] unless entity @a[scores={click=0..}] run fill -44 43 1963 -44 43 1963 minecraft:barrier
#Sabooro
execute if entity @s[scores={text=3}] run data merge entity @s {CustomName:"\"Sabooro\""}
execute if entity @s[tag=Sabooro4] unless entity @a[scores={click=0..}] run tp @a -85 37 1981
execute if entity @s[tag=Sabooro4] unless entity @a[scores={click=0..}] run fill -85 38 1980 -85 38 1980 minecraft:barrier
execute if entity @s[tag=Sabooro4] unless entity @a[scores={click=0..}] run fill -86 38 1981 -86 38 1981 minecraft:barrier
execute if entity @s[tag=Sabooro4] unless entity @a[scores={click=0..}] run fill -84 38 1981 -84 38 1981 minecraft:barrier
execute if entity @s[tag=Sabooro4] unless entity @a[scores={click=0..}] run fill -85 38 1982 -85 38 1982 minecraft:barrier
#Shiro
execute if entity @s[scores={text=4}] run data merge entity @s {CustomName:"\"Shiro\""}
execute if entity @s[tag=Shiro4] unless entity @a[scores={click=0..}] run tp @a -135 43 1931
execute if entity @s[tag=Shiro4] unless entity @a[scores={click=0..}] run fill -135 44 1930 -135 44 1930 minecraft:barrier
execute if entity @s[tag=Shiro4] unless entity @a[scores={click=0..}] run fill -136 44 1931 -136 44 1931 minecraft:barrier
execute if entity @s[tag=Shiro4] unless entity @a[scores={click=0..}] run fill -134 44 1931 -134 44 1931 minecraft:barrier
execute if entity @s[tag=Shiro4] unless entity @a[scores={click=0..}] run fill -135 44 1932 -135 44 1932 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] if entity @s[tag=Ichiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"I have no idea where you come from, but you must have a lot of guts to make it past all the guards around here!"}]
execute if entity @a[scores={click=1}] if entity @s[tag=Jiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"I have no idea where you come from, but you must have a lot of guts to make it past all the guards around here!"}]
execute if entity @a[scores={click=1}] if entity @s[tag=Sabooro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"I have no idea where you come from, but you must have a lot of guts to make it past all the guards around here!"}]
execute if entity @a[scores={click=1}] if entity @s[tag=Shiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"I have no idea where you come from, but you must have a lot of guts to make it past all the guards around here!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] if entity @s[tag=Ichiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"All of my fellow carpenters are imprisoned somewhere in here."}]
execute if entity @a[scores={click=3}] if entity @s[tag=Jiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"All of my fellow carpenters are imprisoned somewhere in here."}]
execute if entity @a[scores={click=3}] if entity @s[tag=Sabooro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"All of my fellow carpenters are imprisoned somewhere in here."}]
execute if entity @a[scores={click=3}] if entity @s[tag=Shiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"All of my fellow carpenters are imprisoned somewhere in here."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] if entity @s[tag=Ichiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"If you can get us out of here, we'll repay the favor somehow!"}]
execute if entity @a[scores={click=5}] if entity @s[tag=Jiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"If you can get us out of here, we'll repay the favor somehow!"}]
execute if entity @a[scores={click=5}] if entity @s[tag=Sabooro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"If you can get us out of here, we'll repay the favor somehow!"}]
execute if entity @a[scores={click=5}] if entity @s[tag=Shiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"If you can get us out of here, we'll repay the favor somehow!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] if entity @s[tag=Ichiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"But be careful! There're sure to be "},{"text":"Gerudo ","color":"red"},{"text":"guards somewhere around here..."}]
execute if entity @a[scores={click=7}] if entity @s[tag=Jiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"But be careful! There're sure to be "},{"text":"Gerudo ","color":"red"},{"text":"guards somewhere around here..."}]
execute if entity @a[scores={click=7}] if entity @s[tag=Sabooro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"But be careful! There're sure to be "},{"text":"Gerudo ","color":"red"},{"text":"guards somewhere around here..."}]
execute if entity @a[scores={click=7}] if entity @s[tag=Shiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"But be careful! There're sure to be "},{"text":"Gerudo ","color":"red"},{"text":"guards somewhere around here..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] if entity @s[tag=Ichiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"Woo! Watch out!"}]
execute if entity @a[scores={click=9}] if entity @s[tag=Jiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"Woo! Watch out!"}]
execute if entity @a[scores={click=9}] if entity @s[tag=Sabooro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"Woo! Watch out!"}]
execute if entity @a[scores={click=9}] if entity @s[tag=Shiro4] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"text":"Woo! Watch out!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10}] run function ocarina_of_time:music/mini_boss

#Ichiro
execute if entity @s[tag=Ichiro4] if entity @a[scores={click=10}] run fill -111 39 2003 -111 39 2003 minecraft:gold_block
execute if entity @s[tag=Ichiro4] if entity @a[scores={click=10}] run fill -110 39 2003 -110 39 2003 minecraft:gold_block
execute if entity @s[tag=Ichiro4] if entity @a[scores={click=10}] run summon minecraft:zombie -112 48 2001 {Tags:["GerudoThief","GerudoThief1","Invisible","Fire","Resist"],DeathLootTable:"ocarina_of_time:entities/gerudo_thief/1",Health:55,Attributes:[{Name:"generic.max_health",Base:55}],PersistenceRequired:1b,Silent:1b,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Ichiro4] if entity @a[scores={click=10}] run summon minecraft:armor_stand -112 48 2001 {Tags:["GerudoThief","GerudoThief1"],Marker:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Rotation:[180f],Pose:{RightArm:[90f,60f,0f],LeftArm:[0f,0f,0f]},ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11803406}}},{id:"leather_leggings",Count:1,tag:{display:{color:11803406}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11803406}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Gerudo Thief\"}",Id:[I;273941195,-1698607812,-1608991714,-1786221976],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkMmYyMjg5YzlkNmYzNTRkYTgxZjEzZmUwYWMyNmQ4ZGI1ZTYzNDM1MGJjMDk4NDkxMGUwZWRkZGQwOWEwYSJ9fX0="}]}}}}],HandItems:[{id:"stone",Count:1b,tag:{CustomModelData:21}},{id:"stone",Count:1b,tag:{CustomModelData:21}}],DisabledSlots:4144959}
execute if entity @s[tag=Ichiro4] if entity @a[scores={click=10}] run fill -112 43 1997 -110 43 1995 minecraft:air
#Jiro
execute if entity @s[tag=Jiro4] if entity @a[scores={click=10}] run fill -47 39 1968 -47 39 1968 minecraft:gold_block
execute if entity @s[tag=Jiro4] if entity @a[scores={click=10}] run fill -47 39 1969 -47 39 1969 minecraft:gold_block
execute if entity @s[tag=Jiro4] if entity @a[scores={click=10}] run summon minecraft:zombie -48 48 1969 {Tags:["GerudoThief","GerudoThief1","Invisible","Fire","Resist"],DeathLootTable:"ocarina_of_time:entities/gerudo_thief/2",Health:55,Attributes:[{Name:"generic.max_health",Base:55}],PersistenceRequired:1b,Silent:1b,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Jiro4] if entity @a[scores={click=10}] run summon minecraft:armor_stand -48 48 1969 {Tags:["GerudoThief","GerudoThief1"],Marker:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Rotation:[180f],Pose:{RightArm:[90f,60f,0f],LeftArm:[0f,0f,0f]},ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11803406}}},{id:"leather_leggings",Count:1,tag:{display:{color:11803406}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11803406}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Gerudo Thief\"}",Id:[I;273941195,-1698607812,-1608991714,-1786221976],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkMmYyMjg5YzlkNmYzNTRkYTgxZjEzZmUwYWMyNmQ4ZGI1ZTYzNDM1MGJjMDk4NDkxMGUwZWRkZGQwOWEwYSJ9fX0="}]}}}}],HandItems:[{id:"stone",Count:1b,tag:{CustomModelData:21}},{id:"stone",Count:1b,tag:{CustomModelData:21}}],DisabledSlots:4144959}
execute if entity @s[tag=Jiro4] if entity @a[scores={click=10}] run fill -44 43 1962 -42 43 1964 minecraft:air
#Sabooro
execute if entity @s[tag=Sabooro4] if entity @a[scores={click=10}] run fill -86 34 1985 -86 34 1985 minecraft:gold_block
execute if entity @s[tag=Sabooro4] if entity @a[scores={click=10}] run fill -85 34 1985 -85 34 1985 minecraft:gold_block
execute if entity @s[tag=Sabooro4] if entity @a[scores={click=10}] run summon minecraft:zombie -86 43 1986 {Tags:["GerudoThief","GerudoThief1","Invisible","Fire","Resist"],DeathLootTable:"ocarina_of_time:entities/gerudo_thief/3",Health:55,Attributes:[{Name:"generic.max_health",Base:55}],PersistenceRequired:1b,Silent:1b,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Sabooro4] if entity @a[scores={click=10}] run summon minecraft:armor_stand -86 43 1986 {Tags:["GerudoThief","GerudoThief1"],Marker:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Rotation:[180f],Pose:{RightArm:[90f,60f,0f],LeftArm:[0f,0f,0f]},ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11803406}}},{id:"leather_leggings",Count:1,tag:{display:{color:11803406}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11803406}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Gerudo Thief\"}",Id:[I;273941195,-1698607812,-1608991714,-1786221976],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkMmYyMjg5YzlkNmYzNTRkYTgxZjEzZmUwYWMyNmQ4ZGI1ZTYzNDM1MGJjMDk4NDkxMGUwZWRkZGQwOWEwYSJ9fX0="}]}}}}],HandItems:[{id:"stone",Count:1b,tag:{CustomModelData:21}},{id:"stone",Count:1b,tag:{CustomModelData:21}}],DisabledSlots:4144959}
execute if entity @s[tag=Sabooro4] if entity @a[scores={click=10}] run fill -84 38 1980 -86 38 1982 minecraft:air
#Shiro
execute if entity @s[tag=Shiro4] if entity @a[scores={click=10}] run fill -136 40 1937 -136 40 1937 minecraft:gold_block
execute if entity @s[tag=Shiro4] if entity @a[scores={click=10}] run fill -135 40 1937 -135 40 1937 minecraft:gold_block
execute if entity @s[tag=Shiro4] if entity @a[scores={click=10}] run summon minecraft:zombie -136 49 1938 {Tags:["GerudoThief","GerudoThief1","Invisible","Fire","Resist"],DeathLootTable:"ocarina_of_time:entities/gerudo_thief/4",Health:55,Attributes:[{Name:"generic.max_health",Base:55}],PersistenceRequired:1b,Silent:1b,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Shiro4] if entity @a[scores={click=10}] run summon minecraft:armor_stand -136 49 1938 {Tags:["GerudoThief","GerudoThief1"],Marker:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Rotation:[180f],Pose:{RightArm:[90f,60f,0f],LeftArm:[0f,0f,0f]},ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11803406}}},{id:"leather_leggings",Count:1,tag:{display:{color:11803406}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11803406}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Gerudo Thief\"}",Id:[I;273941195,-1698607812,-1608991714,-1786221976],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkMmYyMjg5YzlkNmYzNTRkYTgxZjEzZmUwYWMyNmQ4ZGI1ZTYzNDM1MGJjMDk4NDkxMGUwZWRkZGQwOWEwYSJ9fX0="}]}}}}],HandItems:[{id:"stone",Count:1b,tag:{CustomModelData:21}},{id:"stone",Count:1b,tag:{CustomModelData:21}}],DisabledSlots:4144959}
execute if entity @s[tag=Shiro4] if entity @a[scores={click=10}] run fill -136 44 1932 -134 44 1930 minecraft:air

execute if entity @a[scores={click=10}] run tag @a remove NoOcarina
execute if entity @a[scores={click=10}] run tag @s add Cutscene
execute if entity @a[scores={click=10}] run tag @s remove SaveCarpenter
execute if entity @a[scores={click=10}] run scoreboard objectives remove click
