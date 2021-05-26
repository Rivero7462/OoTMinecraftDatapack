scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..349}] if entity @a[distance=..1.5] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#Rolling Goron
execute if entity @s[scores={timer=1}] run scoreboard players set @s text 0
execute if entity @s[scores={timer=1}] run tp @s 2033 111.9 1454
#Motion
execute if entity @s[scores={timer=1..12}] run tp @s ~.1 ~ ~.1
execute if entity @s[scores={timer=13..30}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=31..39}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=40}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=48}] run tp @s ~-.1 ~-.5 ~.1
execute if entity @s[scores={timer=41..47}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=49..68}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=70}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=69}] run tp @s ~-.1 ~-.5 ~.1
execute if entity @s[scores={timer=77}] run tp @s ~ ~-.5 ~.2
execute if entity @s[scores={timer=71..76}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=78..80}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=81..91}] run tp @s ~.1 ~ ~.1
execute if entity @s[scores={timer=93..94}] run tp @s ~.1 ~ ~.1
execute if entity @s[scores={timer=92}] run tp @s ~.1 ~-.5 ~.1
execute if entity @s[scores={timer=100}] run tp @s ~.1 ~-.5 ~.1
execute if entity @s[scores={timer=95..99}] run tp @s ~.1 ~ ~.1
execute if entity @s[scores={timer=101..106}] run tp @s ~.1 ~ ~.1
execute if entity @s[scores={timer=107..111}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=107..109}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=111}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=110}] run tp @s ~.05 ~-.5 ~.15
execute if entity @s[scores={timer=118}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=112..117}] run tp @s ~.02 ~ ~.18
execute if entity @s[scores={timer=119..130}] run tp @s ~.02 ~ ~.18
execute if entity @s[scores={timer=129}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=133}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=130}] run tp @s ~.02 ~ ~.18
execute if entity @s[scores={timer=131..132}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=134..135}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=138}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=141}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=136..137}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=139..140}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=142..144}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=145..151}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=152}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=159}] run tp @s ~-.1 ~-.5 ~.1
execute if entity @s[scores={timer=153..155}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=156..158}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=160..164}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=165..167}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=168}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=173}] run tp @s ~ ~-.5 ~.2
execute if entity @s[scores={timer=169..172}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=174..178}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=179}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=186}] run tp @s ~.05 ~-.5 ~.15
execute if entity @s[scores={timer=180..185}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=187..199}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=200..204}] run tp @s ~ ~ ~.2
execute if entity @s[scores={timer=205}] run data merge entity @s {Rotation:[45f]}
execute if entity @s[scores={timer=205}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=206..215}] run tp @s ~-.08 ~ ~.13
execute if entity @s[scores={timer=216..263}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=264}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=270}] run tp @s ~-.1 ~-.5 ~.1
execute if entity @s[scores={timer=265..269}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=271..296}] run tp @s ~-.1 ~ ~.1
execute if entity @s[scores={timer=297}] run data merge entity @s {Rotation:[90f]}
execute if entity @s[scores={timer=298..315}] run tp @s ~-.15 ~ ~.05
execute if entity @s[scores={timer=316}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=331}] run tp @s ~-.15 ~-.5 ~.05

execute if entity @s[scores={timer=334}] run tp @s ~-.15 ~-.5 ~.05
execute if entity @s[scores={timer=337}] run tp @s ~-.2 ~-.5 ~

execute if entity @s[scores={timer=317..330}] run tp @s ~-.15 ~ ~.05

execute if entity @s[scores={timer=332..333}] run tp @s ~-.15 ~ ~.05
execute if entity @s[scores={timer=335..336}] run tp @s ~-.15 ~ ~.05

execute if entity @s[scores={timer=338..340}] run tp @s ~-.15 ~ ~.05

execute if entity @s[scores={timer=341}] run tp @s ~-.2 ~ ~
execute if entity @s[scores={timer=343..349}] run tp @s ~-.2 ~ ~

execute if entity @s[scores={timer=350}] run particle minecraft:explosion ~ ~2 ~ 1 1 1 0 5
execute if entity @s[scores={timer=350}] run playsound entity.generic.explode block @p
execute if entity @s[scores={timer=350}] run data merge entity @s {Rotation:[315f]}
execute if entity @s[scores={timer=350}] run tp @s 2017 ~ 1493
execute if entity @s[scores={timer=350}] unless block 2010 91 1452 minecraft:gold_block run scoreboard players set @s text 1
execute if entity @s[scores={timer=350}] if block 2010 91 1452 minecraft:gold_block unless entity @e[type=armor_stand,tag=Goron7,scores={text=4..}] run scoreboard players set @s text 2
execute if entity @s[scores={timer=350}] if block 2010 91 1452 minecraft:gold_block if entity @e[type=armor_stand,tag=Goron7,scores={text=4..}] run scoreboard players set @s text 3