execute unless entity @a[level=3..] if entity @a[tag=InDungeon] unless entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run tellraw @a ["",{"text":"Not enough "},{"text":"Magic","color":"green"},{"text":"!"}]
execute if entity @a[tag=InDungeon] if entity @a[level=3..] run tellraw @a "You cast Farore's Wind!"
execute unless entity @a[tag=InDungeon] run tellraw @a "Can't use Farore's Wind here."

#Summon
execute if entity @a[tag=InDungeon,level=3..] unless entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run tellraw @a ["",{"text":"Create a Warp Point","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=area_effect_cloud,tag=Progress] if entity @a[tag=InDungeon,level=3..] unless entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run function ocarina_of_time:items/farore_wind/summon"}}]

#Return
execute if entity @a[tag=InDungeon] if entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run tellraw @a ["",{"text":"Return to the Warp Point","color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @a[tag=InDungeon] unless entity @a[tag=PlayingSong] if entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run function ocarina_of_time:items/farore_wind/teleport"}}]
#Dispel
execute if entity @a[tag=InDungeon] if entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run tellraw @a ["",{"text":"Dispel the Warp Point","color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @a[tag=InDungeon] if entity @e[type=area_effect_cloud,tag=Progress,scores={Ypos=0..}] run function ocarina_of_time:items/farore_wind/dismiss"}}]
