execute unless entity @s[tag=Attack] facing entity @p eyes if block ^ ^ ^ #ocarina_of_time:push_block if entity @a[dx=0,dy=0,dz=0] run tag @s add Attack
execute unless entity @s[tag=Attack] facing entity @p eyes if block ^ ^ ^ #ocarina_of_time:push_block unless entity @a[dx=0,dy=0,dz=0] positioned ^ ^ ^.5 run function ocarina_of_time:enemies/ray_cast

execute if entity @s[tag=Attack] facing entity @p eyes unless block ^ ^ ^ #ocarina_of_time:push_block unless entity @a[dx=0,dy=0,dz=0] run tag @s remove Attack
execute if entity @s[tag=Attack] facing entity @p eyes if block ^ ^ ^ #ocarina_of_time:push_block unless entity @a[dx=0,dy=0,dz=0] positioned ^ ^ ^.5 run function ocarina_of_time:enemies/ray_cast
