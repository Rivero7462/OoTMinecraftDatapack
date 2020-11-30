execute unless entity @s[team=Rock] run team join Rock @s
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s Volvagia 0

#Appear
scoreboard players add @s lifetime 1
tag @s add self
execute if entity @s[scores={lifetime=1..9}] rotated as @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 90
tag @s remove self

#Body Length
scoreboard objectives add Volvagia dummy
execute store result score @s Volvagia if entity @e[type=zombie,tag=VolvagiaTail]
execute if entity @s[scores={Volvagia=4}] run tag @s add Stop

#Fly
#Summon
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] unless entity @s[scores={Volvagia=4..}] if entity @s[scores={lifetime=22}] run summon minecraft:zombie ~ 42 ~ {Tags:["Volvagia","VolvagiaTail","VolvagiaBody","End"],Rotation:[160f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#Up
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=10..54}] run tp @s ~ ~.08 ~ ~ 90
#Rotate
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=55..72}] run tp @s ^ ^-.08 ^-.08 ~ ~-5
#Connect to Body
tag @s add self
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] unless entity @s[tag=End] unless entity @s[scores={lifetime=1..75}] unless entity @s[tag=FlyDown] positioned ^ ^ ^-2 at @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] positioned ^ ^-.2 ^1.7 unless entity @s[distance=...2] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.16 ~ 0
tag @s remove self
#Connect to Tail
tag @s add self
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[tag=End] unless entity @s[scores={lifetime=1..75}] unless entity @s[tag=FlyDown] positioned ^ ^ ^-2 at @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] positioned ^ ^ ^1.6 unless entity @s[distance=...4] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.2 ~ 0
tag @s remove self
#Fly Down
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=201..}] positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return,distance=..1] run tag @s add FlyDown
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[tag=FlyDown] unless entity @s[scores={lifetime=500..}] run scoreboard players set @s lifetime 500
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=500..508}] run tp @s ^ ^ ^-.08
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=509..518}] run tp @s ^ ^-.12 ^-.04 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=519..528}] run tp @s ^ ^ ^-.08 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=529..600}] run tp @s ^ ^ ^-.08
execute if entity @e[type=zombie,tag=Volvagia,tag=Fly] if entity @s[scores={lifetime=500..}] if entity @s[y=40,dy=0] run kill @s

#Boulder
#Summon
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] unless entity @s[scores={Volvagia=4..}] if entity @s[scores={lifetime=15}] run summon minecraft:zombie ~ 42 ~ {Tags:["Volvagia","VolvagiaTail","VolvagiaBody","End"],Rotation:[160f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#Up
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=10..205}] run tp @s ~ ~.12 ~ ~ 90
#Rotate
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=215..232}] run tp @s ^ ^-.08 ^-.08 ~ ~-5
#Connect Body
tag @s add self
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] unless entity @s[tag=End] unless entity @s[scores={lifetime=1..237}] unless entity @s[tag=FlyDown] positioned ^ ^ ^-2 at @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] positioned ^ ^-.2 ^1.7 unless entity @s[distance=...2] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.16 ~ 0
tag @s remove self
#Connect Tail
tag @s add self
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[tag=End] unless entity @s[scores={lifetime=1..237}] unless entity @s[tag=FlyDown] positioned ^ ^ ^-2 at @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] positioned ^ ^ ^1.6 unless entity @s[distance=...4] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.18 ~ 0
tag @s remove self
#Fly Down
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=601..}] positioned ~ ~-18 ~ if entity @e[type=area_effect_cloud,tag=DragonFloor3,distance=..1] run tag @s add FlyDown
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[tag=FlyDown] unless entity @s[scores={lifetime=724..}] run scoreboard players set @s lifetime 724
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=724..733}] run tp @s ^ ^-.08 ^-.02 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=734..1050}] run tp @s ^ ^ ^-.08 ~ ~-5
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=1051}] run kill @s
execute if entity @e[type=zombie,tag=Volvagia,tag=Boulder] if entity @s[scores={lifetime=700..}] if entity @s[y=40,dy=0] run kill @s

#Die
#Summon
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] unless entity @s[scores={Volvagia=4..}] if entity @s[scores={lifetime=22}] run summon minecraft:zombie ~ 42 ~ {Tags:["Volvagia","VolvagiaTail","VolvagiaBody","End"],Rotation:[-10f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#Up
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] if entity @s[scores={lifetime=10..54}] run tp @s ~ ~.08 ~ ~ 90
#Rotate
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] if entity @s[scores={lifetime=55..72}] run tp @s ^ ^-.08 ^-.08 ~ ~-5
#Connect to Body
tag @s add self
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] unless entity @s[tag=End] unless entity @s[scores={lifetime=1..75}] unless entity @s[tag=FlyDown] positioned ^ ^ ^-2 at @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] positioned ^ ^-.2 ^1.7 unless entity @s[distance=...2] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.16 ~ 0
tag @s remove self
#Connect to Tail
tag @s add self
execute if entity @e[type=zombie,tag=FakeVolvagia,tag=Die] if entity @s[tag=End] unless entity @s[scores={lifetime=1..75}] positioned ^ ^ ^-2 at @e[type=zombie,tag=VolvagiaBody,tag=!self,sort=nearest,limit=1] positioned ^ ^ ^1.6 unless entity @s[distance=...4] facing entity @s feet positioned as @s run tp @s ^ ^ ^-.2 ~ 0
tag @s remove self
