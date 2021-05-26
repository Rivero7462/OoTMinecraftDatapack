effect give @s minecraft:wither 1 2 true
kill @e[type=armor_stand,tag=PhantomGuide]
execute unless entity @e[type=armor_stand,tag=PhantomGuide] run summon minecraft:armor_stand 2006 59 244 {Tags:["PhantomGuide"],Marker:1b,Invisible:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing"}
tp @s 1908 40 250
