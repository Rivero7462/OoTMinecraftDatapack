execute if block ^ ^ ^1 #ocarina_of_time:push_block if entity @a[distance=..2] at @a run tag @e[type=armor_stand,tag=Fan,sort=nearest,limit=1] add Blow
execute if block ^ ^ ^1 #ocarina_of_time:push_block unless entity @a[distance=..2] run tag @s remove Blow
execute if block ^ ^ ^1 #ocarina_of_time:push_block unless entity @a[distance=..2] positioned ^ ^ ^.5 run function ocarina_of_time:moving_things/ganon_castle_underground/fan/ray_cast
