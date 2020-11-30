execute unless entity @a[scores={click=0..}] run tp @a 1652 39 1951.0
execute unless entity @a[scores={click=0..}] run scoreboard players set @s timer 0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run fill 1653 40 1950 1653 40 1951 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1652 40 1949 1652 40 1949 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1651 40 1950 1651 40 1951 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1652 40 1952 1652 40 1952 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Dampé: ","color":"gold"},{"text":"Heh heh heh, young man! Are you fast on your feet?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Dampé: ","color":"gold"},{"text":"I may not look like it, but I'm confident in my speed! Let's have a race! Follow me if you dare!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tag @a remove NoOcarina
execute if entity @a[scores={click=5}] run tag @s add Start
execute if entity @a[scores={click=5}] run fill 1653 40 1952 1651 40 1949 minecraft:air

execute if entity @s[tag=Start] run scoreboard players add @s timer 1
#Path
execute if entity @s[scores={timer=5..99}] run tp @s ~.2 ~ ~
execute if entity @s[scores={timer=100..151}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=152..200}] run tp @s ~.2 ~.05 ~
execute if entity @s[scores={timer=201..220}] run tp @s ~.2 ~ ~
execute if entity @s[scores={timer=221..246}] run tp @s ~.2 ~-.05 ~
execute if entity @s[scores={timer=247..271}] run tp @s ~ ~ ~-.2
execute if entity @s[scores={timer=272..336}] run tp @s ~.2 ~-.04 ~
execute if entity @s[scores={timer=337..382}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=383..432}] run tp @s ~.2 ~ ~
execute if entity @s[scores={timer=433..472}] run tp @s ~ ~ ~-.2
execute if entity @s[scores={timer=473..530}] run tp @s ~.2 ~ ~
execute if entity @s[scores={timer=531..552}] run tp @s ~.2 ~.05 ~
execute if entity @s[scores={timer=553..597}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=597..636}] run tp @s ~-.2 ~ ~
execute if entity @s[scores={timer=637..661}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=662..690}] run tp @s ~ ~-.06 ~.2
execute if entity @s[scores={timer=691..742}] run tp @s ~-.1 ~-.05 ~.2
execute if entity @s[scores={timer=743..791}] run tp @s ~-.2 ~-.01 ~
execute if entity @s[scores={timer=792..830}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=831..855}] run tp @s ~-.2 ~-.04 ~
execute if entity @s[scores={timer=856..945}] run tp @s ~-.2 ~ ~
execute if entity @s[scores={timer=946..989}] run tp @s ~ ~.02 ~-.2
execute if entity @s[scores={timer=990..1034}] run tp @s ~-.2 ~.01 ~
execute if entity @s[scores={timer=1035..1099}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=1100..1164}] run tp @s ~-.2 ~.03 ~
execute if entity @s[scores={timer=1164..1195}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=1195..1255}] run tp @s ~-.1 ~.09 ~.05
execute if entity @s[scores={timer=1256..1347}] run tp @s ~-.1 ~ ~.05
execute if entity @s[scores={timer=1348..1385}] run tp @s ~-.2 ~ ~
execute if entity @s[scores={timer=1386..1407}] run tp @s ~-.2 ~.05 ~
execute if entity @s[scores={timer=1408..1418}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=1418},tag=Heart] run tag @s add Rupee
execute if entity @s[scores={timer=1418}] if block 1638 42 2013 minecraft:chest run tag @s add Heart
execute if entity @s[scores={timer=1418}] unless block 1638 42 2013 minecraft:chest run scoreboard players set @s text 1
execute if entity @s[scores={timer=1418}] if block 1638 42 2013 minecraft:chest run scoreboard players set @s text 2

#Rupees
execute if entity @s[scores={timer=1}] run summon minecraft:item 1671 37 1961 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1683 39 1965 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1719 37 1969 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1739 37 1966 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1742 32 1983 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1717 32 2004 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1693 32 2008 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if entity @s[scores={timer=1}] run summon minecraft:item 1680 33 1982 {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}

execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1671,y=37,z=1961,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1683,y=39,z=1965,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1719,y=37,z=1969,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1739,y=37,z=1966,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1742,y=32,z=1983,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1717,y=32,z=2004,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1693,y=32,z=2008,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1..1417}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1680,y=33,z=1982,dx=1,dz=1] timer 0
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1671,y=37,z=1961,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1683,y=39,z=1965,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1719,y=37,z=1969,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1739,y=37,z=1966,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1742,y=32,z=1983,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1717,y=32,z=2004,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1693,y=32,z=2008,dx=1,dz=1] timer 200
execute if entity @s[scores={timer=1418}] run scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=1680,y=33,z=1982,dx=1,dz=1] timer 200

#Doors
#1
execute if entity @s[x=1727,y=38,z=1957,dx=0,dz=0] run tag @s add CloseDoor
execute if entity @a[x=1730.0,y=38,z=1956,dx=0,dz=2] run tag @s remove CloseDoor
#2
execute if entity @s[x=1705,y=33,z=1995,dx=0,dz=0] run tag @s add CloseDoor
execute if entity @a[x=1702.3,y=33,z=1994,dx=0,dz=2] run tag @s remove CloseDoor
#3
execute if entity @s[x=1653,y=42,z=2013,dx=0,dz=0] run tag @s add FinalDoor
execute if entity @a[x=1650.3,y=42,z=2012,dx=0,dz=2] run tag @s remove FinalDoor

#Timer
execute if entity @s[tag=CloseDoor,scores={lifetime=65..}] run effect give @a minecraft:wither 1 3 true
execute if entity @s[tag=CloseDoor,scores={lifetime=65..}] run tag @a add ResetRace
execute unless entity @s[tag=CloseDoor] unless entity @s[tag=FinalDoor] run scoreboard players set @s lifetime 0
#Final Door
execute if entity @s[tag=FinalDoor,scores={lifetime=100..}] run effect give @a minecraft:wither 1 3 true
execute if entity @s[tag=FinalDoor,scores={lifetime=100..}] run tag @a add ResetRace

#Doors
#1
execute if entity @s[tag=CloseDoor] run fill 1728 37 1956 1728 39 1958 minecraft:air
execute unless entity @s[tag=CloseDoor] run fill 1728 37 1956 1728 39 1958 minecraft:polished_andesite
execute if entity @s[tag=CloseDoor,scores={lifetime=60..}] run fill 1728 37 1956 1728 39 1958 minecraft:polished_andesite
#2
execute if entity @s[tag=CloseDoor] run fill 1704 32 1994 1704 34 1996 minecraft:air
execute unless entity @s[tag=CloseDoor] run fill 1704 32 1994 1704 34 1996 minecraft:polished_andesite
execute if entity @s[tag=CloseDoor,scores={lifetime=60..}] run fill 1704 32 1994 1704 34 1996 minecraft:polished_andesite
#3
execute if entity @s[tag=FinalDoor] run fill 1652 41 2012 1652 43 2014 minecraft:air
execute unless entity @s[tag=FinalDoor] run fill 1652 41 2012 1652 43 2014 minecraft:polished_andesite
execute if entity @s[tag=FinalDoor,scores={lifetime=95..}] run fill 1652 41 2012 1652 43 2014 minecraft:polished_andesite

execute as @a at @s if block ~ ~-1 ~ minecraft:black_wool run tag @a add ResetRace

#Fire
fill 1689 41 1959 1689 41 1959 minecraft:fire
fill 1689 41 1963 1689 41 1963 minecraft:fire
fill 1710 33 1992 1710 33 1992 minecraft:fire
fill 1710 33 1998 1710 33 1998 minecraft:fire
fill 1696 33 1999 1696 33 1999 minecraft:fire
fill 1696 33 1991 1696 33 1991 minecraft:fire

#Throw Fire
execute as @e[type=silverfish,tag=Fire] at @s run scoreboard players add @s time 1
execute as @e[type=silverfish,tag=Fire,scores={time=1..5}] at @s facing entity @p eyes rotated ~ 0 run tp @s ^ ^-.1 ^.1 ~ 0
execute as @e[type=silverfish,tag=Fire,scores={time=6..}] at @s if block ~ ~-.3 ~ minecraft:air run tp @s ~ ~-.1 ~
execute at @e[type=silverfish,tag=Fire] if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true 

execute at @e[type=silverfish,tag=Fire] run particle minecraft:flame ~ ~ ~ .1 0 .1 0.01 1 normal
execute if entity @s[scores={GameTimer=90}] run kill @e[type=silverfish,tag=Fire]
execute if entity @s[scores={GameTimer=90}] run scoreboard players set @s GameTimer 0

execute if entity @s[scores={timer=1195..}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={timer=1195..}] run kill @e[type=silverfish,tag=Fire]
