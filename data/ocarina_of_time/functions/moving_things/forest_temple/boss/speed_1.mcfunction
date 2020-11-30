#Attack Player
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=1}] facing entity @p feet run tp @s ^ ^ ^.3 ~ ~
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=2..}] run tp @s ^ ^ ^.3 ~ ~

#Attack Phantom
execute if entity @s[tag=Reflect,scores={timer=1..}] facing entity @e[type=zombie,tag=PhantomGanon] feet run tp @s ^ ^ ^.3 ~ ~
