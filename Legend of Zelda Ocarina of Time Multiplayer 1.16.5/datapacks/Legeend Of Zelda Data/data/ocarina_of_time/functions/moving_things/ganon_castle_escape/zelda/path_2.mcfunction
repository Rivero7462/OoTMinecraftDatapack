execute unless entity @s[tag=Stop] run scoreboard players add @s lifetime 1

#Stops
execute if entity @s[tag=Stop] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Stop] if entity @a[distance=..3] unless entity @e[type=zombie,tag=Stalfos] run tag @s remove Stop
#1
execute if entity @s[scores={lifetime=1}] run tp @s -636 39 892
execute if entity @s[scores={lifetime=1}] run tag @s add Stop
execute if entity @s[scores={lifetime=1}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=3}] run tp @s ~ ~ ~ 90 ~
execute if entity @s[scores={lifetime=4..56}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=20}] run summon minecraft:wither_skull -641 53 891 {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={lifetime=57}] run tag @s add Stop
execute if entity @s[scores={lifetime=57}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=59}] run tp @s ~ ~ ~ 140 ~
execute if entity @s[scores={lifetime=60..95}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=65}] run summon minecraft:wither_skull -649 53 890 {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={lifetime=96}] run tag @s add Stop
execute if entity @s[scores={lifetime=96}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=98}] run tp @s ~ ~ ~ 171 ~
execute if entity @s[scores={lifetime=99..124}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=125}] run tag @s add Stop
execute if entity @s[scores={lifetime=125}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=127}] run tp @s ~ ~ ~ 90 ~
execute if entity @s[scores={lifetime=127}] run fill -653 39 883 -653 42 880 minecraft:air
execute if entity @s[scores={lifetime=128..150}] run tp @s ^ ^ ^.2
#2
execute if entity @s[scores={lifetime=151}] run tp @s -644 31 875
execute if entity @s[scores={lifetime=151}] run tag @s add Stop
execute if entity @s[scores={lifetime=151}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=153}] run tp @s ~ ~ ~ 45 ~
execute if entity @s[scores={lifetime=154..188}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=189}] run tp @s ~ ~ ~ 0 ~
execute if entity @s[scores={lifetime=190..209}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=210}] run tp @s ~ ~ ~ -45 ~
execute if entity @s[scores={lifetime=211..259}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=260}] run tag @s add Stop
execute if entity @s[scores={lifetime=260}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=262}] run fill -641 31 892 -643 34 892 minecraft:air
execute if entity @s[scores={lifetime=262}] run tp @s ~ ~ ~ 0 ~
execute if entity @s[scores={lifetime=263..287}] run tp @s ^ ^ ^.2
#3
execute if entity @s[scores={lifetime=288}] run tp @s -645 24 883
execute if entity @s[scores={lifetime=288}] run tag @s add Stop
execute if entity @s[scores={lifetime=288}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=290}] run tp @s ~ ~ ~ -45 ~
execute if entity @s[scores={lifetime=291..311}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=312}] if entity @a[x=-643,y=25,z=885,dx=2,dz=2] run tp @a -645 24 886
execute if entity @s[scores={lifetime=312}] run fill -641 24 886 -641 24 886 minecraft:fire
execute if entity @s[scores={lifetime=312}] run fill -642 24 885 -642 24 885 minecraft:fire
execute if entity @s[scores={lifetime=312}] run fill -643 24 886 -643 24 886 minecraft:fire
execute if entity @s[scores={lifetime=312}] run fill -642 24 887 -642 24 887 minecraft:fire
execute if entity @s[scores={lifetime=312}] run fill -641 25 886 -641 25 886 minecraft:barrier
execute if entity @s[scores={lifetime=312}] run fill -642 25 885 -642 25 885 minecraft:barrier
execute if entity @s[scores={lifetime=312}] run fill -643 25 886 -643 25 886 minecraft:barrier
execute if entity @s[scores={lifetime=312}] run fill -642 25 887 -642 25 887 minecraft:barrier
execute if entity @s[scores={lifetime=312}] run summon minecraft:zombie -640 24 876 {Tags:["Stalfos1","Stalfos","Invisible","Room1"],Rotation:[45f],PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:78}}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:2}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=312}] run summon minecraft:armor_stand -640 24 876 {Tags:["StalfosShield1","StalfosShield"],Invisible:1b,HandItems:[{},{id:shield,Count:1b,tag:{BlockEntityTag:{Base:8,Patterns:[{Pattern:"cbo",Color:4}]}}}],Marker:1b}
execute if entity @s[scores={lifetime=312}] run summon minecraft:zombie -637 24 879 {Tags:["Stalfos2","Stalfos","Invisible","Room1"],Rotation:[45f],PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:78}}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:2}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=312}] run summon minecraft:armor_stand -637 24 879 {Tags:["StalfosShield2","StalfosShield"],Invisible:1b,HandItems:[{},{id:shield,Count:1b,tag:{BlockEntityTag:{Base:8,Patterns:[{Pattern:"cbo",Color:4}]}}}],Marker:1b}
execute if entity @s[scores={lifetime=312}] run tag @s add Stop
execute if entity @s[scores={lifetime=312}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=313}] unless entity @e[type=zombie,tag=Stalfos] run fill -641 24 885 -643 25 887 minecraft:air
execute if entity @s[scores={lifetime=313}] unless entity @e[type=zombie,tag=Stalfos] run tag @s remove Stop
execute if entity @s[scores={lifetime=313}] unless entity @e[type=zombie,tag=Stalfos] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=314}] run summon minecraft:item ~ ~ ~.3 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[scores={lifetime=314}] run summon minecraft:item ~ ~ ~-.3 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[scores={lifetime=314}] run summon minecraft:item ~.3 ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[scores={lifetime=314}] run summon minecraft:item ~-.3 ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[scores={lifetime=314}] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Heart\"}"},Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,Item:1b}}}
execute if entity @s[scores={lifetime=314}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":". Now let's hurry!"}]
execute if entity @s[scores={lifetime=314}] run tp @s ~ ~ ~ -113 ~
execute if entity @s[scores={lifetime=315..364}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=365}] run tag @s add Stop
execute if entity @s[scores={lifetime=365}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=367}] run fill -632 24 881 -632 27 883 minecraft:air
execute if entity @s[scores={lifetime=367}] run tp @s ~ ~ ~ -90 ~
execute if entity @s[scores={lifetime=368..394}] run tp @s ^ ^ ^.2
#4
execute if entity @s[scores={lifetime=395}] run tp @s -643 17 888
execute if entity @s[scores={lifetime=395}] run tag @s add Stop
execute if entity @s[scores={lifetime=395}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=397}] run tp @s ~ ~ ~ 135 ~
execute if entity @s[scores={lifetime=398..418}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=419}] run tag @s add Stop
execute if entity @s[scores={lifetime=419}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=421}] run tp @s ~ ~ ~ -127 ~
execute if entity @s[scores={lifetime=421}] run summon minecraft:wither_skull -647 21 883 {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={lifetime=422..471}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=472}] run tp @s ~ ~ ~ 147 ~
execute if entity @s[scores={lifetime=473..509}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=480}] run summon minecraft:wither_skull -639 21 877 {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={lifetime=510}] run tag @s add Stop
execute if entity @s[scores={lifetime=510}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=512}] run fill -643 17 872 -641 20 872 minecraft:air
execute if entity @s[scores={lifetime=512}] run tp @s ~ ~ ~ 175 ~
execute if entity @s[scores={lifetime=513..577}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=578}] run tag @s add Stop
execute if entity @s[scores={lifetime=578}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=580}] run tp @s ~ ~ ~ -118 ~
execute if entity @s[scores={lifetime=581..602}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=603}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=604..611}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=612}] run tag @s add Stop
execute if entity @s[scores={lifetime=612}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=614}] run tp @s ~ ~ ~ -55 ~
execute if entity @s[scores={lifetime=615..624}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=625}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=626..639}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=635}] run summon minecraft:wither_skull ~ ~4 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={lifetime=640}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=641..651}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=652}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=653}] run tag @s add Stop
execute if entity @s[scores={lifetime=653}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=655}] run tp @s ~ ~ ~ -24 ~
execute if entity @s[scores={lifetime=656..666}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=667}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=668..679}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=680}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=680}] run summon minecraft:wither_skull ~ ~4 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={lifetime=681..694}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=695}] run tp @s ^ ^-1 ^
execute if entity @s[scores={lifetime=696..707}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=708}] run tp @s ~ ~ ~ -90 ~
execute if entity @s[scores={lifetime=709..714}] run tp @s ^ ^ ^.2
execute if entity @s[scores={lifetime=715}] run tag @s add Stop
execute if entity @s[scores={lifetime=715}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=717}] run tp @s ~ ~ ~ -90 ~
execute if entity @s[scores={lifetime=717}] run fill -626 10 869 -626 13 871 minecraft:air
execute if entity @s[scores={lifetime=718..765}] run tp @s ^ ^ ^.2
