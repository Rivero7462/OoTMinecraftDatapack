scoreboard players add @s timer 1

execute unless entity @a[tag=Fly] if entity @s[scores={timer=100..250}] run fill 697 67 2766 697 67 2766 minecraft:gold_block
execute unless entity @a[tag=Fly] if entity @s[scores={timer=100..250}] run tp @s ~.3 ~.1 ~-.3
execute unless entity @a[tag=Fly] if entity @s[scores={timer=251..500}] run tp @s ~.3 ~ ~-.3
execute unless entity @a[tag=Fly] if entity @s[scores={timer=501..}] run kill @s
execute unless entity @a[tag=Fly] unless entity @s[scores={timer=0..15}] unless entity @s[scores={timer=100..}] if entity @a[x=732,y=71,z=2760,dx=0,dz=0] run tag @a add Fly
