execute unless entity @a[tag=SinkLure] run scoreboard players set @e[type=fishing_bobber] timer 0
execute if entity @a[tag=SinkLure] run scoreboard players set @e[type=fishing_bobber] timer 2

#Sinking Lure
execute unless entity @a[tag=SinkLure] if block 411 57 2719 minecraft:gold_block at @e[type=area_effect_cloud,tag=SinkSpot] if entity @a[distance=..1] run tellraw @a ["",{"text":"Wow! Is this what I think it is? Astonishing! You snagged a "},{"text":"sinking lure","color":"red"},{"text":"!"}]
execute unless entity @a[tag=SinkLure] if block 411 57 2719 minecraft:gold_block at @e[type=area_effect_cloud,tag=SinkSpot] if entity @a[distance=..1] run tag @a add SinkLure
