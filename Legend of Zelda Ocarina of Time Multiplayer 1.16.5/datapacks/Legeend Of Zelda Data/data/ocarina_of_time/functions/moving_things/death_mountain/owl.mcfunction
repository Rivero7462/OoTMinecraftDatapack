scoreboard players add @s timer 1
execute unless entity @a[tag=Fly] if entity @s[scores={timer=100..150}] run tp @s ~ ~.1 ~.5
execute unless entity @a[tag=Fly] if entity @s[scores={timer=151..400}] run tp @s ~ ~ ~.5
execute unless entity @a[tag=Fly] if entity @s[scores={timer=401..}] run kill @s
execute unless entity @a[tag=Fly] unless entity @s[scores={timer=100..}] if entity @a[x=2027,y=157,z=1348,dx=0,dz=0] run tag @a add Fly
